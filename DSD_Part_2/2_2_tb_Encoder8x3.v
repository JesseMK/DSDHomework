//File: 2_2_tb_Encoder8x3.v

`timescale 10ns / 1ns
`define CLOCK_CYCLE 5
`define STOP 10

`include "2_2_Encoder8x3.v"


module tb_Encoder8x3;
  
  reg [7:0]  p_data;
  wire [2:0] p_code;
  integer i;
  
  Encoder8x3 m_encoder(.code(p_code), .data(p_data));
  
  initial
  begin
    p_data = 8'b0000_0001;
    
    for (i = 1; i < `STOP; i = i+1)
      #`CLOCK_CYCLE p_data = p_data << 1; //???????data
    
    $stop;    
  end
endmodule