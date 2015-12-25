//FIle: 2_6_tb_comb_Y2.v

`timescale 10ns / 1ns
`define CLOCK_CYCLE 5
`define STOP 16

`include "2_6_comb_Y2.v"

module tb_comb_Y2();
  
  //????????????
  reg [3:0] p_in;
  wire p_y;
  
  //?? comb_Y2 ????
  comb_Y2 m_Y2(.Y(p_y), .A(p_in[0]), .B(p_in[1]), .C(p_in[2]), .D(p_in[3]));
  
  //??????
  initial
  begin
    
    //???
    p_in = 4'b0;
    
    repeat(`STOP)
      #`CLOCK_CYCLE p_in = p_in + 1'b1;
    
    //STOP
    #`CLOCK_CYCLE $stop;
  end
  
  //??????
  initial
    $monitor($time,"  DCBA = %4b, Y = %b", p_in, p_y);
  
endmodule