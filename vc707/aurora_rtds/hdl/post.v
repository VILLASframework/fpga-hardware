`timescale 1ns / 1ps

/* Count the number of incoming packets from RTDS over Aurora in a single 
 * transaction, and strip the trailing sequence number before forwarding to 
 * the outside world over AXI-Stream. 
 *
 * TODO: Sequence number is stripped only if ctrl_strip_seq is asserted.
 * TODO: Move incoming-packet-counting logic from top module to this module.
 * TODO: Aurora from RTDS does not have a tready at its AXI-Stream master 
 *       interface, but a tready could be introduced here (maybe via a FIFO?).
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

            // Control ports
            input wire           ctrl_strip_seq,

            // ILA probes
            output wire [47 : 0] ila_out
            );

   wire                          stat_cnt_pkts_rdy; // Indicates when the corresponding status register holds the correct count

   reg                           stat_cnt_pkts_rdy_i, state_cnt_pkts;

   reg [31 : 0]                  stat_cnt_pkts; // Status register, count of number of packets received 

   localparam
     ST_IN_COUNT = 1'b0,
     ST_IN_LAST  = 1'b1;

   // Count the number of packets received from RTDS
   // TODO: Does stat_cnt_pkts_in need to be 32-bit long?
   always @(posedge m_axis_aclk) begin
      if (m_axis_aresetn == 1'b0) begin
         stat_cnt_pkts <= 16'h00_00;
         stat_cnt_pkts_rdy_i <= 1'b0;

         state_cnt_pkts <= ST_IN_COUNT;
      end else begin
         case (state_cnt_pkts)
           ST_IN_COUNT: begin
              stat_cnt_pkts_rdy_i <= 1'b0;

              if (s_axis_tvalid == 1'b1) begin
                 stat_cnt_pkts <= stat_cnt_pkts + 16'h00_01;

                 if (s_axis_tlast == 1'b1) begin
                    stat_cnt_pkts_rdy_i <= 1'b1;
                    state_cnt_pkts <= ST_IN_LAST;
                 end
              end
           end
           ST_IN_LAST: begin
              stat_cnt_pkts_rdy_i <= 1'b1;
              if (s_axis_tvalid == 1'b1) begin
                 stat_cnt_pkts <= 16'h00_01;

                 state_cnt_pkts <= ST_IN_COUNT;
              end
           end
         endcase
      end
   end

   assign stat_cnt_pkts_rdy = stat_cnt_pkts_rdy_i & ~s_axis_tvalid;

   assign ila_out = {stat_cnt_pkts_rdy, stat_cnt_pkts, 15'b000_0000_0000_0000};

endmodule // post
