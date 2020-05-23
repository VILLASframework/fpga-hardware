/* @author Hatim Kanchwala <hatim@hatimak.me>
 * @copyright 2019 Hatim Kanchwala
 */

module concat(
              input wire          in3,
              input wire          in2,
              input wire          in1,
              input wire          in0,
              (* X_INTERFACE_PARAMETER = "SENSITIVITY LEVEL_HIGH" *)
              output wire [3 : 0] concated
              );

   assign concated = {in3, in2, in1, in0};

endmodule // concat
