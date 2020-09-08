`include "defines.vh"

/* Simulation test bench for the post module
 * 
 * @author Hatim Kanchwala <hatim@hatimak.me>
 * @copyright 2020 Hatim Kanchwala
 */

module post_tb();

   localparam
     ST_A = 4'b0000,
     ST_B = 4'b0001,
     ST_C = 4'b0010,
     ST_D = 4'b0011,
     ST_CTR = 4'b0100,
     ST_PAUSE1 = 4'b0101,
     ST_PAUSE2 = 4'b0110,
     ST_PAUSE3 = 4'b0111,
     ST_PAUSE4 = 4'b1000;

   reg m_axis_aclk, m_axis_aresetn,
       ctrl_strip_seq_en, ctrl_rst_cntr_in,
       s_axis_tvalid, s_axis_tlast;
   reg [3 : 0] state;
   reg [31 : 0] s_axis_tdata, counter;

   wire m_axis_tvalid, m_axis_tlast;
   wire [31 : 0] m_axis_tdata;
   wire [63 : 0] slv_cntr_in;

   initial begin
      m_axis_aclk = 1'b0;
      m_axis_aresetn = 1'b0; // Assert reset
      ctrl_strip_seq_en = 1'b1; // Enable stripping of sequence numbers
      ctrl_rst_cntr_in = 1'b0;
      #20 m_axis_aresetn = 1'b1; // Deassert reset
      #405 ctrl_strip_seq_en = 1'b0; // Disable stripping of sequence numbers
   end

   always begin
      #5 m_axis_aclk = ~m_axis_aclk;
   end

   always @(posedge m_axis_aclk) begin
      if (m_axis_aresetn == 1'b0) begin
         s_axis_tvalid <= 1'b0;
         s_axis_tlast <= 1'b0;
         s_axis_tdata <= 32'h0;
         counter <= 32'h1;

         state <= ST_A;
      end else begin
         case (state)
           ST_A: begin
              s_axis_tvalid <= 1'b1;
              s_axis_tdata <= 32'ha5_a5_a5_a5;
              s_axis_tlast <= 1'b0;

              state <= ST_C;
           end
           ST_B: begin
              s_axis_tvalid <= 1'b0;

              state <= ST_C;
           end
           ST_C: begin
              s_axis_tvalid <= 1'b1;
              s_axis_tdata <= 32'h5a_a5_5a_a5;

              state <= ST_D;
           end
           ST_D: begin
              s_axis_tvalid <= 1'b0;

              state <= ST_CTR;
           end
           ST_CTR: begin
              s_axis_tvalid <= 1'b1;
              s_axis_tdata <= counter;
              s_axis_tlast <= 1'b1;

              counter <= counter + 1;
              state <= ST_PAUSE1;
           end
           ST_PAUSE1: begin
              s_axis_tvalid <= 1'b0;
              s_axis_tlast <= 1'b0;

              state <= ST_PAUSE2;
           end
           ST_PAUSE2: begin
              state <= ST_PAUSE3;
           end
           ST_PAUSE3: begin
              state <= ST_PAUSE4;
           end
           ST_PAUSE4: begin
              state <= ST_A;
           end
         endcase
      end
   end

   post UUT (
             .m_axis_aclk       (m_axis_aclk),
             .m_axis_aresetn    (m_axis_aresetn),

             // AXI-Stream slave interface
             .s_axis_tvalid     (s_axis_tvalid),
             .s_axis_tdata      (s_axis_tdata),
             .s_axis_tlast      (s_axis_tlast),

             // AXI-Stream master interface
             .m_axis_tvalid     (m_axis_tvalid),
             .m_axis_tdata      (m_axis_tdata),
             .m_axis_tlast      (m_axis_tlast),

             // Status and control ports
             .ctrl_strip_seq_en (ctrl_strip_seq_en),
             .ctrl_rst_cntr_in  (ctrl_rst_cntr_in),
             .slv_cntr_in       (slv_cntr_in)
             );

endmodule // post_tb
