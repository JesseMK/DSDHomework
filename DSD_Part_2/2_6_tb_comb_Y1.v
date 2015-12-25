//FIle: 2_6_tb_comb_Y1.v

`timescale 10ns / 1ns
`define CLOCK_CYCLE 5
`define STOP 8

`include "2_6_comb_Y1.v"

module tb_comb_Y1();
  
  //????????????
  reg [2:0] p_in;
  wire p_y;
  
  //?? comb_Y1 ????
  comb_Y1 m_Y1(.Y(p_y), .A(p_in[0]), .B(p_in[1]), .C(p_in[2]));
  
  //??????
  initial
  begin
    
    //???
    p_in = 3'b0;
    
    repeat(`STOP)
      #`CLOCK_CYCLE p_in = p_in + 1'b1;
    
    //STOP
    #`CLOCK_CYCLE $stop;
  end
  
  //??????
  initial
    $monitor($time,"  CBA = %3b, Y = %b", p_in, p_y);
  
endmodule