`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
// © Copyright 2011-2013 Xilinx, Inc. All rights reserved.
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /   Vendor: Xilinx 
// \   \   \/    
//  \   \        BPI PROM Programming over PCIe  Version: 1.2 
//  /   /        Date Last Modified: 3/25/12 
// /___/   /\    Date Created: 11/17/10
// \   \  /  \   Associated Filename: programmer.v
//  \___\/\___\ 
// 
//  Device: Virtex-7
//  Purpose: Virtex-7 PCIe In-system Programming for BPI PROM
//  Reference: <XAPP518.pdf>
//  Revision History: Initial release
//   
///////////////////////////////////////////////////////////////////////////////
//
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.

///////////////////////////////////////////////////////////////////////////////
// Engineer: ST
// 
// Module Name:  programmer 
// Description:  low level G18 BPI PROM programmer
//
// Additional Comments: Initial Release
//
//////////////////////////////////////////////////////////////////////////////////
`define Start_Addr 16'h5341 //S
`define End_Addr 8'h45 //N
`define Unlock  32'h556E6C6B //Unlk
`define Erase  32'h45726173 //Eras
`define Program  32'h50726F67 //Prog
`define End_Program  32'h446F6E65 //Done
`define max_unlock_pollcnt 9'h100
`define unlock_wait_count 15'h0004
`define max_erase_pollcnt 24'hF42400 //800ms
`define max_buffer_ready_check_count 15'h4650 //900us
`define addr_increment_128kW 24'h020000
`define max_64kW_blk_count       8'hFF
`define start_16kW_blk_address   24'hFF0000
`define max_16kW_blk_count       3'h4
`define prog_word_count 16'h0200 // buffer size = 512 words 
//`define prog_word_count 16'h0020 // buffer size = 32 words 


module programmer(
    input CLK,
    input RST,
    output	[24:1] A,
    input 	[15:0] DQ_I,
    output reg 	[15:0] DQ_O, 
    output reg OE_N,
    output reg WE_N, // latches addr and data on rising edge
    output reg CS_N,
    output reg TRI_CTRL,
    output FIFO_RD_EN,
    input FIFO_EMPTY,    
    input [31:0] DATA,
    output [7:0] PROM_SR,
    output PROG_RDY,
    output [2:0] ERROR
    );

reg	  [5:0]	CurrentState, NextState;
reg 		    rst_reg;
reg		      rst_SR_reg;
reg		      rst_poll_cnt;
reg		      rst_data_cnt;

reg 	[23:0]	A_reg;
reg 	[15:0]	DQ_O_reg;
reg		WE_N_reg;
reg 		OE_N_reg;
reg 		CS_N_reg;
reg 		FIFO_RD_EN_reg;
reg 		start_addr_reg_en;
reg 	[15:0]	start_addr_reg; 
reg 	[23:0]	end_addr_reg;
reg 		end_addr_reg_en;
reg 	[23:0]	A_inc;
reg		A_reg_en;
reg		SR_reg_en;
reg		blk_cnt_en;
reg 	[7:0] 	SR_reg;
reg 	[8:0]	unlck_cnt;
reg		unlck_cnt_en;
reg 	[2:0] 	error_flag;
reg 	[2:0] 	error_reg;
reg		error_reg_en;
reg		load_blk_cnt;
reg 	[8:0]	blk_cnt;
reg 	[23:0]	poll_cnt;
reg		poll_cnt_en;
reg 	[8:0]	data_cnt;
reg		data_cnt_en;
reg 	[1:0]	test_cnt;
reg		test_cnt_en;
reg		byte_sel_reg, byte_sel_en;
reg		prog_ready;
reg        	prog_done;

wire		last_blk;
wire	[7:0]	end_blk, start_blk;
wire	[24:1]	A_inc_blk_unlk; // block lock read identifier address - offset 0x02
wire	[24:1]	start_addr;
wire	[23:0]	end_addr, blk_base_addr;
wire		end_addr_reached;
wire	[15:0]	data_sel;

parameter [5:0]
	idle		= 6'h00,
	command		= 6'h01,
	blk_lck_setup_cmd 	= 6'h02, 
	unlck_cmd 	= 6'h03,
	unlck_cmd_1 	= 6'h04,	
	rd_id 		= 6'h05,	
	rd_id_1 	= 6'h06,
	unlck_rd_SR 	= 6'h07,
	unlck_rd_SR_1 	= 6'h08,
	unlck_rd_SR_2 	= 6'h1E,				
	unlck_chk_id 	= 6'h09,
	unlck_chk_pollcnt 	= 6'h0A,
	eras_clear_SR 	= 6'h24,
	eras_clear_SR_1 = 6'h25,	
	eras_setup 	= 6'h0B,
	eras_confirm 	= 6'h0C,	
	eras_confirm_1 	= 6'h0D,
	eras_rd_SR 	= 6'h0E,
	eras_rd_SR_1 	= 6'h0F,
	eras_rd_SR_2 	= 6'h20,
	eras_chk_SR 	= 6'h10,
	eras_chk_pollcnt= 6'h11,
	prog_setup 	= 6'h12,
	prog_rd_SR	= 6'h13,
	prog_rd_SR_1	= 6'h14,
	prog_rd_SR_2	= 6'h21,	
	prog_chk_SR	= 6'h15,
	prog_chk_pollcnt= 6'h16,
	prog_load_addr  = 6'h17,
	prog_load_addr_1  = 6'h26,
	prog_load_addr_2  = 6'h27,
	prog_chk_data_count	= 6'h18,
	prog_load_buffer  = 6'h22,
	prog_load_buffer_underrun = 6'h28,
	prog_load_buffer_underrun1 = 6'h29,
	prog_load_buffer_underrun2 = 6'h2A,	
	prog_buf	= 6'h19,
	prog_buf_1      = 6'h2B,
	prog_bufprog_rd_SR	= 6'h1A,
	prog_bufprog_rd_SR_1	= 6'h1B,	
	prog_bufprog_chk_SR	= 6'h1C,
	prog_bufprog_chk_pollcnt= 6'h1D,				
	error 		= 6'h1F;
	

always @ (*)
begin : SM_mux
	prog_ready = 1'b0;
	FIFO_RD_EN_reg = 1'b0;
	NextState = idle;
	TRI_CTRL = 1'b0;
	rst_reg = 1'b0;
	rst_SR_reg = 1'b0;
	rst_poll_cnt = 1'b0;
	rst_data_cnt = 1'b0;
	WE_N_reg = 1'b1;
	OE_N_reg= 1'b1;
	CS_N_reg= 1'b0;
	start_addr_reg_en = 1'b0;
	end_addr_reg_en = 1'b0;
	A_reg_en = 1'b0;
	A_inc = 17'b0;
	SR_reg_en = 1'b0;
	load_blk_cnt = 1'b0;
	blk_cnt_en = 1'b0;
	data_cnt_en = 1'b0;	
	DQ_O_reg = 16'h0000;
	unlck_cnt_en = 1'b0;
	poll_cnt_en = 1'b0;
	test_cnt_en = 1'b0;
	error_flag = 3'b0;
	error_reg_en = 1'b0;
	byte_sel_en = 1'b0;		
	case (CurrentState)
		idle : //0
			begin
				rst_reg = 1'b1;
				rst_poll_cnt = 1'b1;
				rst_data_cnt = 1'b1;
				rst_SR_reg = 1'b1;
				CS_N_reg= 1'b1;
				prog_ready = 1'b1;			
				if (~FIFO_EMPTY)
				begin
					
					FIFO_RD_EN_reg = 1'b1;
					NextState = command;
				end
				else 
				begin
					NextState = idle;
				end
			end
		command : //1
			begin
				prog_ready = 1'b1;
				if (DATA == `Unlock)
				begin
					WE_N_reg = 1'b0;
					DQ_O_reg = 16'h60;
					A_reg_en = 1'b1;
					A_inc = blk_base_addr + 2;
					load_blk_cnt = 1'b1;
					NextState = blk_lck_setup_cmd;					
				end
				else if (DATA == `Erase)
				begin
					WE_N_reg = 1'b0;
					DQ_O_reg = 16'h50;
					A_reg_en = 1'b1;
					A_inc = start_addr;
					load_blk_cnt = 1'b1;
					NextState = eras_clear_SR;
				end
				else if (DATA == `Program)
				begin
					WE_N_reg = 1'b0;
					DQ_O_reg = 16'hE9;
					load_blk_cnt = 1'b1;
		          		A_reg_en = 1'b1;
			  		A_inc = start_addr;					
					NextState = prog_setup;
				end
				else if (DATA[31:16] == `Start_Addr)
				begin
					start_addr_reg_en = 1'b1;
					NextState = idle;	
				end
				else if (DATA[31:24] == `End_Addr)
				begin
					end_addr_reg_en = 1'b1;
					NextState = idle;
				end				
				else
				begin
					CS_N_reg= 1'b1;
					NextState = idle;				
				end
			end
		blk_lck_setup_cmd : //2
			begin
				WE_N_reg = 1'b1;
				DQ_O_reg = 16'h60;
				A_inc = A_inc_blk_unlk;
				NextState = unlck_cmd;				
			end
                unlck_cmd : //3
			begin
				WE_N_reg = 1'b0;
				DQ_O_reg = 16'hD0;
				A_inc = A_inc_blk_unlk;
				NextState = unlck_cmd_1;			
			end
                unlck_cmd_1 : //4
			begin
				WE_N_reg = 1'b1;
				DQ_O_reg = 16'hD0;
				A_inc = A_inc_blk_unlk;
				rst_poll_cnt = 1'b1;
				NextState = rd_id;			
			end
			
                rd_id : //5
			begin
				WE_N_reg = 1'b0;
				DQ_O_reg = 16'h90;
				A_inc = A_inc_blk_unlk;
				NextState = rd_id_1;			
			end	
                rd_id_1 : //6
			begin
				WE_N_reg = 1'b1;
				DQ_O_reg = 16'h90;
				A_inc = A_inc_blk_unlk;
				NextState = unlck_rd_SR;			
			end
                unlck_rd_SR : //7
			begin
				WE_N_reg = 1'b1;
				A_inc = A_inc_blk_unlk;
				NextState = unlck_rd_SR_1;			
			end
                unlck_rd_SR_1 : //8
			begin
				SR_reg_en =  1'b1;
				A_inc = A_inc_blk_unlk;
				OE_N_reg= 1'b0;
				TRI_CTRL = 1'b1;
				NextState = unlck_rd_SR_2;			
			end
                unlck_rd_SR_2 : // 1E
			begin
				SR_reg_en =  1'b1;
				A_inc = A_inc_blk_unlk;
				OE_N_reg= 1'b1;
				TRI_CTRL = 1'b1;
				NextState = unlck_chk_id;			
			end				
                unlck_chk_id : //9
			begin
				A_inc = A_inc_blk_unlk;
				if (SR_reg[0] == 1'b0)
				begin																								       
					if (last_blk)
					begin
						WE_N_reg = 1'b1;
						CS_N_reg= 1'b1;
						NextState = idle;
					end
					else
					begin
						DQ_O_reg = 16'h60;
						WE_N_reg = 1'b0;
						blk_cnt_en = 1'b1;
						A_reg_en = 1'b1;
						NextState = blk_lck_setup_cmd;						
					end
				end				
				else
				begin
					unlck_cnt_en = 1'b1;
					NextState = unlck_chk_pollcnt;			
				end
			end
                unlck_chk_pollcnt : //A
			begin
				if (unlck_cnt == `max_unlock_pollcnt)
				begin
					error_flag = 3'b001;
					error_reg_en = 1'b1;
					NextState = error;
				end
				else
				begin
					WE_N_reg = 1'b0;
					DQ_O_reg = 16'h60;
					NextState = blk_lck_setup_cmd;			
				end
			end
		eras_clear_SR : //24
			begin
				WE_N_reg = 1'b1;
				DQ_O_reg = 16'h50;
				NextState = eras_clear_SR_1;
			end
		eras_clear_SR_1 : //25
			begin
				WE_N_reg = 1'b0;
				DQ_O_reg = 16'h20;
				NextState = eras_setup;
			end			
		eras_setup ://B
			begin
				WE_N_reg = 1'b1;
				DQ_O_reg = 16'h20;
				NextState = eras_confirm;				
			end
                eras_confirm : //C
			begin
				WE_N_reg = 1'b0;
				DQ_O_reg = 16'hD0;
				NextState = eras_confirm_1;			
			end
                eras_confirm_1 : //D
			begin
				WE_N_reg = 1'b1;
				DQ_O_reg = 16'hD0;
				NextState = eras_rd_SR;			
			end
                eras_rd_SR ://E
			begin
				WE_N_reg = 1'b1;
				NextState = eras_rd_SR_1;			
			end
                eras_rd_SR_1 : //F
			begin
				SR_reg_en =  1'b1;
				OE_N_reg= 1'b0;
				TRI_CTRL = 1'b1;								
				NextState = eras_rd_SR_2;			
			end
                eras_rd_SR_2 : //20
			begin
				SR_reg_en =  1'b1;
				
				OE_N_reg= 1'b1;
				TRI_CTRL = 1'b1;
				NextState = eras_chk_SR;			
			end				
                eras_chk_SR : //10
			begin
				`ifdef SIMULATION
				if (SR_reg[7] == 1'b1) //SR.7 = 1
				`else			
				if (SR_reg == 8'h80) 
				`endif
				begin
				        A_reg_en = 1'b1;
					A_inc = A_inc_blk_unlk;
					if (last_blk)
					begin
						WE_N_reg = 1'b1;
						CS_N_reg= 1'b1;
						blk_cnt_en = 1'b0;
						NextState = idle;
					end
					else
					begin
						WE_N_reg = 1'b0;
						DQ_O_reg = 16'h50;
						blk_cnt_en = 1'b1;						
						rst_poll_cnt = 1'b1;
						NextState = eras_clear_SR;	
					end					
				end				
				else
				if (SR_reg[7] == 1'b1) //SR.7 = 1
				begin
					error_flag = 3'b010;
					error_reg_en = 1'b1;
					NextState = error;
				end
				else
				begin
					
					poll_cnt_en = 1'b1;
					NextState = eras_chk_pollcnt;			
				end
			end
		eras_chk_pollcnt : //11
			begin				
				if (poll_cnt == `max_erase_pollcnt)
				begin
					error_flag = 3'b011;
					error_reg_en = 1'b1;
					NextState = error;
				end
				else			
				begin
					NextState = eras_rd_SR;			
				end			
			end
		prog_setup : //12
			begin
				WE_N_reg = 1'b1;
				DQ_O_reg = 16'hE9;				
				NextState = prog_rd_SR;				
			end
                prog_rd_SR : //13
			begin
				WE_N_reg = 1'b1;				 
				NextState = prog_rd_SR_1;			
			end
                prog_rd_SR_1 : //14
			begin
				SR_reg_en =  1'b1;				
				OE_N_reg= 1'b0;
				TRI_CTRL = 1'b1;				
				NextState = prog_rd_SR_2;			
			end
                prog_rd_SR_2 : //21
			begin
				SR_reg_en =  1'b1;				
				OE_N_reg= 1'b1;
				TRI_CTRL = 1'b1;
				NextState = prog_chk_SR;			
			end				
                prog_chk_SR : //15
			begin
				if (SR_reg[7] == 1'b1) //SR.7 = 1
				begin										
					WE_N_reg = 1'b0;
					DQ_O_reg = `prog_word_count - 1; //max word count = 512
					rst_poll_cnt = 1'b1;										
					NextState = prog_load_addr;					
				end				
				else
				begin
					poll_cnt_en = 1'b1;
					NextState = prog_chk_pollcnt;			
				end
			end
		prog_chk_pollcnt : // 16
			begin
				if (poll_cnt[7:0] == `max_buffer_ready_check_count)
				begin
					error_flag = 3'b100;
					error_reg_en = 1'b1;
					NextState = error;
				end
				else
				begin
					WE_N_reg = 1'b0;
					DQ_O_reg = 16'h20;
					NextState = prog_setup;			
				end			
			end
	      	prog_load_addr : //17
		        begin		          
		          WE_N_reg = 1'b1;
		          DQ_O_reg = `prog_word_count - 1;
		          if (~FIFO_EMPTY) // The FIFO may underrun if the host data feeds too slowly
		          begin
			  	FIFO_RD_EN_reg = 1'b1;
			  	NextState = prog_load_addr_1 ;
			  end
			  else
			  begin
			  	FIFO_RD_EN_reg = 1'b0;
			        NextState = prog_load_addr ;
		          end			
		        end  			
		prog_load_addr_1 : //26
			begin
				WE_N_reg = 1'b0;
				DQ_O_reg = data_sel;
				NextState = prog_load_addr_2;				
			end
		prog_load_addr_2 : //27
			begin
				WE_N_reg = 1'b1;
				DQ_O_reg = data_sel;
				byte_sel_en = 1'b1;
				if (~FIFO_EMPTY)
				begin				

					NextState = prog_chk_data_count;
				end
				else
				begin
					FIFO_RD_EN_reg = 1'b0;						
					NextState = prog_load_buffer_underrun;
				end				
			end			
		prog_chk_data_count : //18 																											
			begin
				if (data_cnt == `prog_word_count - 1)
				begin
					DQ_O_reg = 16'hD0;
					WE_N_reg = 1'b0;
					rst_data_cnt = 1'b1;
					NextState = prog_buf;
				end
				else
				begin
					WE_N_reg = 1'b0;
					A_reg_en = 1'b1;
					A_inc = 17'h00001;
					DQ_O_reg = data_sel;
					NextState = prog_load_buffer;
				end
			end
		prog_load_buffer : //22
			begin
				WE_N_reg = 1'b1;				
				DQ_O_reg = data_sel;
				byte_sel_en = 1'b1;								
				if (~FIFO_EMPTY)
				begin
					NextState = prog_chk_data_count;
					data_cnt_en = 1'b1;
					if (data_cnt == 9'h01E)
						FIFO_RD_EN_reg = 1'b0;
					else if (byte_sel_reg)					
						FIFO_RD_EN_reg = 1'b1;	
						else FIFO_RD_EN_reg = 1'b0;
				end
				else
				begin // check for FIFO underrun condition
					
						FIFO_RD_EN_reg = 1'b0;
						data_cnt_en = 1'b1;								
						NextState = prog_load_buffer_underrun;
				end
			end
		prog_load_buffer_underrun : //28	
			begin
				WE_N_reg = 1'b0;
				A_reg_en = 1'b1;
				A_inc = 17'h00001;
				DQ_O_reg = data_sel;
				data_cnt_en = 1'b1;
				NextState = prog_load_buffer_underrun1;
			end
		prog_load_buffer_underrun1 : //29
			begin
				DQ_O_reg = data_sel;
				if (data_cnt == `prog_word_count - 1)
				begin					
					NextState = prog_load_buffer_underrun2;
				end
				else
				begin
					if (~FIFO_EMPTY)
					begin
						FIFO_RD_EN_reg = 1'b1;
						byte_sel_en = 1'b1;
						NextState = prog_chk_data_count;
					end
					else
					begin
						if (prog_done && (data_cnt == `prog_word_count - 1)) // Program if last address has been reached
						begin
							
							WE_N_reg = 1'b1;					
							NextState = prog_chk_data_count;	
						end
						else
							NextState = prog_load_buffer_underrun1;	
					end
				end
			end
		prog_load_buffer_underrun2 : //2A
			begin
				DQ_O_reg = 16'hD0;
				WE_N_reg = 1'b0;
				rst_data_cnt = 1'b1;
				byte_sel_en = 1'b1;
				NextState = prog_buf;	
			end							
		prog_buf : //19
			begin
			rst_SR_reg = 1'b1;
				WE_N_reg = 1'b1;
				DQ_O_reg = 16'hD0;
				NextState = prog_buf_1;					
			end
		prog_buf_1 : //2B
			begin			   
				NextState = prog_bufprog_rd_SR;				
			end
                prog_bufprog_rd_SR : //1A
			begin				
				WE_N_reg = 1'b1;
				OE_N_reg= 1'b0; 
				TRI_CTRL = 1'b1;
				SR_reg_en =  1'b1;				
				NextState = prog_bufprog_rd_SR_1;			
			end
                prog_bufprog_rd_SR_1 : //1B
			begin				
				SR_reg_en =  1'b1;
				OE_N_reg= 1'b1;
				TRI_CTRL = 1'b1;				
				NextState = prog_bufprog_chk_SR;			
			end	
                prog_bufprog_chk_SR : //1C
			begin			
			`ifdef SIMULATION
				if (SR_reg[7] == 1'b1) //SR.7 = 1				
			`else
				if (SR_reg == 8'h80) //
			`endif 
				begin
					blk_cnt_en = 1'b1;
					if (prog_done)
					begin
						WE_N_reg = 1'b1;
						CS_N_reg= 1'b1;
						
						NextState = idle;
					end
					else
					begin	
						A_inc = 17'h00001;
        				        A_reg_en = 1'b1;																		
						WE_N_reg = 1'b0;
						DQ_O_reg = 8'hE9; 
						rst_poll_cnt = 1'b1;
						NextState = prog_setup;
				        end					
				end				
				else
				begin
					
					poll_cnt_en = 1'b1;
					NextState = prog_bufprog_chk_pollcnt;			
				end
			end	
		prog_bufprog_chk_pollcnt : //1D
			begin				
				if (poll_cnt[14:0] == `max_buffer_ready_check_count)
				begin
					error_flag = 3'b101;
					error_reg_en = 1'b1;
					NextState = error;
				end
				else
				begin
					NextState = prog_bufprog_rd_SR;			
				end			
			end			
						
		error :	//1F
			NextState = error;							
		default : 
			begin
				CS_N_reg= 1'b1;
				NextState = idle;
			end
	endcase
end
						
			
			
always@(posedge CLK or posedge RST)
begin : SEQ
	if (RST)
		CurrentState = idle;
	else
		CurrentState = NextState;
end

always@(posedge CLK)
begin : test_counter
	if (RST)
		test_cnt = 2'b0;
	else
	if (test_cnt_en)
		test_cnt = test_cnt + 1;
	
end

always@(posedge CLK)
begin : err_reg
	if (RST)
		error_reg = 3'b0;
	else
	if (error_reg_en)
		error_reg = error_flag;
	
end

always@(posedge CLK)
begin : unlck_counter
	if (rst_reg)
		unlck_cnt = 9'b0;
	else
	if (unlck_cnt_en)
		unlck_cnt = unlck_cnt + 1;
	
end

always@(negedge CLK)
begin : SR_register
	if (rst_SR_reg)
	begin
		SR_reg = 8'b0;
		OE_N = 1'b1;
	end
	else
	if (SR_reg_en)
	begin
		SR_reg = DQ_I;
		OE_N = OE_N_reg;
	end
	
end

always@(posedge CLK)
begin : data_counter
	if (rst_data_cnt)
		data_cnt = 9'b0;
	else
	if (data_cnt_en)
		data_cnt = data_cnt + 1;
	
end

always@(posedge CLK)
begin : poll_counter
	if (rst_poll_cnt)
		poll_cnt = 24'b0;
	else
	if (poll_cnt_en)
		poll_cnt = poll_cnt + 1;
	
end

always@(posedge CLK)
begin : blk_counter
	if (rst_reg)
		blk_cnt = 9'h000;
	else
	if (load_blk_cnt)
		blk_cnt = start_blk;
	else
	if (blk_cnt_en)
		blk_cnt = blk_cnt + 1;	
end

always@(posedge CLK)
begin : start_address_reg
	if (RST)
		start_addr_reg = 8'b0;
	else
	if (start_addr_reg_en)
		start_addr_reg = DATA[15:0];
	
end

always@(posedge CLK)
begin : end_address_reg
	if (RST)
		end_addr_reg = 24'b0;
	else
	if (end_addr_reg_en)
		end_addr_reg = DATA[23:0];
	
end

always@(posedge CLK)
begin : prog_done_reg
	if (rst_reg)
		prog_done = 1'b0;
	else
	if (prog_done)
		prog_done = 1'b1;
	else
	if (end_addr_reached)
		prog_done = 1'b1;
end

always@(posedge CLK)
begin : address_reg
	if (rst_reg)
		A_reg = 24'b0;
	else
	if (A_reg_en)
		A_reg = A_reg + A_inc;
	
end

always@(posedge CLK)
begin : DQ_reg
	if (rst_reg)
	begin
		DQ_O = 16'b0;
		CS_N = 1'b1;
		WE_N = 1'b1;
	end
	else
	begin
		DQ_O = DQ_O_reg;
		CS_N = CS_N_reg;
		WE_N = WE_N_reg;
	end
	
end


always@(posedge CLK)
begin : byte_selector
	if (rst_reg)
	begin
		byte_sel_reg = 1'b0;
	end
	else
	if (byte_sel_en)
	begin
		byte_sel_reg = ~byte_sel_reg;
	end	
end

assign A[24:1]=A_reg;
assign data_sel = (byte_sel_reg) ? {DATA[7:0],DATA[15:8]} : {DATA[23:16],DATA[31:24]} ; // need to do byte swap due to VisualBasic6 byte ordering
assign FIFO_RD_EN = FIFO_RD_EN_reg;
assign A_inc_blk_unlk = `addr_increment_128kW; //increment 128 Kilo Words
assign start_blk = start_addr_reg[15:9];
assign end_blk = (end_addr_reg[23:17]); //convert from word to byte
assign last_blk = (A[24:18] == end_blk ) ? 1'b1 : 1'b0;
assign start_addr = {start_addr_reg, 8'h00};
assign blk_base_addr = {start_addr_reg[15:9], 17'h0};
assign end_addr = end_addr_reg; //convert from word to byte
assign end_addr_reached = (A == end_addr && (CurrentState == prog_chk_data_count || CurrentState == prog_load_buffer_underrun)) ? 1'b1 : 1'b0;
assign PROG_RDY = prog_ready;
assign PROM_SR = SR_reg;
assign ERROR = error_reg;
//assign A[26:25] = 2'b00;
		
endmodule