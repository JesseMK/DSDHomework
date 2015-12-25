//File: 2_5_tb_BCD2Excess3.v

`timescale 10ns / 1ns
`define CLOCK_CYCLE 5

`include "2_5_BCD2Excess3.v"

module tb_BCD2Excess3();
  
  //????
  reg [3:0] p_in;
  wire [3:0] p_out;
  
  //????
  BCD2Excess3 m_BCD2Excess3(.dat_out(p_out), .dat_in(p_in));
  
  //???? p_in
  initial
  begin
    p_in = 4'b0;
    repeat (16)
      #`CLOCK_CYCLE p_in = p_in + 1'b1;
  end
  
  //??????
  initial
    $monitor($time, "  dat_in = %4b, dat_out = %4b ", p_in, p_out);
  
endmodule