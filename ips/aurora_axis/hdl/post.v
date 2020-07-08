`include "defines.vh"

/* Count the number of incoming packets from RTDS over Aurora in a single 
 * transaction, and strip the trailing sequence number before forwarding to 
 * the outside world over AXI-Stream. 
 *
 * TODO: Aurora from RTDS does not have a tready at its AXI-Stream master 
 *       interface, but a tready could be introduced here (maybe via a FIFO?).
 * TODO: tlast signal
 *
 * @author Hatim Kanchwala <hatim@hatimak.me>
 * @copyright 2019 Hatim Kanchwala
 */

module post(
	    input wire 		 m_axis_aclk,
	    input wire 		 m_axis_aresetn,

	    // AXI-Stream slave interface
	    input wire 		 s_axis_tvalid,
	    input wire [31 : 0]  s_axis_tdata,
	    input wire 		 s_axis_tlast,

	    // AXI-Stream master interface
	    output wire 	 m_axis_tvalid,
	    output wire [31 : 0] m_axis_tdata,
	    output wire 	 m_axis_tlast,

	    // Status and control ports
	    input wire 		 ctrl_strip_seq_en,
	    input wire 		 ctrl_rst_cntr_in,
	    output wire [63 : 0] slv_cntr_in
	    );

   wire 			 stat_cnt_pkts_rdy, // Indicates when the corresponding status register holds the correct count
				 data_pkts_window;
   wire [15 : 0] 		 stat_cnt_pkts; // Count of number of packets received (depends on ctrl_strip_seq_en)
   reg 				 stat_cnt_pkts_rdy_i, state_cnt_pkts, state_cnt;
   reg [15 : 0] 		 cnt_pkts; // Count of number of packets received (always including sequence number), maximum count 2^16 = 65,536
   reg [63 : 0] 		 slv_cntr_in_i; // Slave register to count received frames

   localparam
     S_IN_COUNT = 1'b0,
     S_IN_LAST  = 1'b1;

   localparam
     S_CNT_COUNT = 1'b0,
     S_CNT_RST   = 1'b1;

   /* Count number of incoming frames, frames from NovaCor to
    * Aurora. Counter is reset as long as corresponding bit in 
    * control register is asserted. 
    * 
    * TODO: Handle overflow of counter. */
   always @(posedge m_axis_aclk) begin
      if (m_axis_aresetn == 1'b0) begin // Global reset
         slv_cntr_in_i <= { {64{1'b0}} };

      state_cnt <= S_CNT_COUNT;
   end else begin
      case (state_cnt)
        S_CNT_RST: begin
           // Wait here until control port is de-asserted
           if (ctrl_rst_cntr_in == 1'b0) begin
              state_cnt <= S_CNT_COUNT;
           end
        end
        S_CNT_COUNT: begin
           // Increment counter as the last bit is received.
           if (s_axis_tvalid == 1'b1 && s_axis_tlast == 1'b1) begin
              slv_cntr_in_i <= slv_cntr_in_i + 64'h0000_0000_0000_0001;
           end

           // Reset counter when control port is asserted
           if (ctrl_rst_cntr_in == 1'b1) begin
              slv_cntr_in_i <= { {64{1'b0}} };

           state_cnt <= S_CNT_RST;
        end
        end
      endcase
   end
   end

   assign slv_cntr_in = slv_cntr_in_i;


   // Count the number of packets received from RTDS
   // TODO: Does stat_cnt_pkts_in need to be 16-bit long?
   always @(posedge m_axis_aclk) begin
      if (m_axis_aresetn == 1'b0) begin
         cnt_pkts <= 16'h00_00;
         stat_cnt_pkts_rdy_i <= 1'b0;

         state_cnt_pkts <= S_IN_COUNT;
      end else begin
         case (state_cnt_pkts)
           S_IN_COUNT: begin
              stat_cnt_pkts_rdy_i <= 1'b0;

              if (s_axis_tvalid == 1'b1) begin
                 cnt_pkts <= cnt_pkts + 16'h00_01;

                 if (s_axis_tlast == 1'b1) begin
                    stat_cnt_pkts_rdy_i <= 1'b1;
                    state_cnt_pkts <= S_IN_LAST;
                 end
              end
           end
           S_IN_LAST: begin
              stat_cnt_pkts_rdy_i <= 1'b1;
              if (s_axis_tvalid == 1'b1) begin
                 cnt_pkts <= 16'h00_01;

                 state_cnt_pkts <= S_IN_COUNT;
              end
           end
         endcase
      end
   end

   assign stat_cnt_pkts_rdy = stat_cnt_pkts_rdy_i & ~s_axis_tvalid;
   assign stat_cnt_pkts = (ctrl_strip_seq_en) ? cnt_pkts - 16'h00_01 : cnt_pkts;


   assign data_pkts_window = ~stat_cnt_pkts_rdy & ~s_axis_tlast;

   assign m_axis_tvalid = (ctrl_strip_seq_en) ? s_axis_tvalid & data_pkts_window : s_axis_tvalid;
   assign m_axis_tdata = (ctrl_strip_seq_en) ? s_axis_tdata & {32{data_pkts_window}} : s_axis_tdata;

endmodule // post