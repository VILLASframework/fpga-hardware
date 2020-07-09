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
            input wire           m_axis_aclk,
            input wire           m_axis_aresetn,

            // AXI-Stream slave interface
            input wire           s_axis_tvalid,
            input wire [31 : 0]  s_axis_tdata,
            input wire           s_axis_tlast,

            // AXI-Stream master interface
            output wire          m_axis_tvalid,
            output wire [31 : 0] m_axis_tdata,
            output wire          m_axis_tlast,

            // Status and control ports
            input wire           ctrl_strip_seq_en,
            input wire           ctrl_rst_cntr_in,
            output wire [63 : 0] slv_cntr_in
            );

   reg                           state_cnt, state_window, window_tlast_d, window_tvalid_d, s_axis_tvalid_d;
   reg [31 : 0]                  s_axis_tdata_d;
   reg [63 : 0]                  slv_cntr_in_i; // Slave register to count received frames
   wire                          window_tlast, window_tvalid, s_axis_tlast_d;

   localparam
     S_CNT_COUNT = 1'b0,
     S_CNT_RST   = 1'b1;

   localparam
     S_WIN_IDLE = 1'b0,
     S_WIN_UP   = 1'b1;


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


   always @(posedge m_axis_aclk) begin
      if (m_axis_aresetn == 1'b0) begin
         state_window <= S_WIN_IDLE;
      end else begin
         case (state_window)
           S_WIN_IDLE: begin
              if (s_axis_tvalid == 1'b1) begin
                 state_window <= S_WIN_UP;
              end
           end
           S_WIN_UP: begin
              if (s_axis_tlast == 1'b1) begin
                 state_window <= S_WIN_IDLE;
              end
           end
         endcase
      end
   end
   assign window_tlast = (~s_axis_tlast & (state_window == S_WIN_UP)) & s_axis_tvalid;
   assign window_tvalid = (~s_axis_tlast & (s_axis_tvalid | (state_window == S_WIN_UP))) & s_axis_tvalid;
   always @(posedge m_axis_aclk) begin
      if (m_axis_aresetn == 1'b0) begin
         window_tlast_d <= 1'b0;
         window_tvalid_d <= 1'b0;
      end else begin
         window_tlast_d <= window_tlast;
         window_tvalid_d <= window_tvalid;
      end
   end

   assign s_axis_tlast_d = ~window_tlast & window_tlast_d;

   always @(posedge m_axis_aclk) begin
      if (m_axis_aresetn == 1'b0) begin
         s_axis_tdata_d <= 32'h0;
         s_axis_tvalid_d <= 1'b0;
      end else begin
         s_axis_tdata_d <= s_axis_tdata;
         s_axis_tvalid_d <= s_axis_tvalid;
      end
   end


   assign m_axis_tvalid = (ctrl_strip_seq_en) ? s_axis_tvalid_d & window_tvalid_d : s_axis_tvalid;
   assign m_axis_tdata = (ctrl_strip_seq_en) ? s_axis_tdata_d : s_axis_tdata;
   assign m_axis_tlast = (ctrl_strip_seq_en) ? s_axis_tlast_d : s_axis_tlast;

endmodule // post
