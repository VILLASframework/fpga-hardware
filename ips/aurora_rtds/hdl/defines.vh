`timescale 1ns / 1ps

/* Macro definitions.
 *
 * @author Hatim Kanchwala <hatim@hatimak.me>
 * @copyright 2019 Hatim Kanchwala
 */

`ifndef DEFINES_VH
 `define DEFINES_VH

 //`define INCLUDE_ILA_AURORA_PRE
 `define INCLUDE_ILA_AURORA
 //`define INCLUDE_ILA_AURORA_POST

 /* Use VIO module to write to slave registers of augmented-Aurora module. 
  * If VIO not used, then write possible through AXI Slave register interface.
  * Read possible through both methods.
  */
 //`define USE_VIO_SLV_AURORA

`endif
