//File: 2_4_testbench_comb.v

`timescale 10ns / 1ns
`define CLOCK_CYCLE 5

`include "2_4_comb_str.v"
`include "2_4_comb_dataflow.v"
`include "2_4_comb_behavior.v"
`include "2_4_comb_prim.v"

module testbench_comb();
  
  //????
  wire p_A, p_B, p_C, p_D;
  wire [3:0] p_Y;
  
  //???? reg ???????????
  reg [3:0] p_in;
  
  //????
  comb_str      m_comb_str(.Y(p_Y[0]), .A(p_A), .B(p_B), .C(p_C), .D(p_D));
  comb_dataflow m_comb_dat(.Y(p_Y[1]), .A(p_A), .B(p_B), .C(p_C), .D(p_D));
  comb_behavior m_comb_beh(.Y(p_Y[2]), .A(p_A), .B(p_B), .C(p_C), .D(p_D));
  
  //?????????
  comb_prim (p_Y[3], p_A, p_B, p_C, p_D);
  
  //?????? p_in ?????
  assign p_A = p_in[0];
  assign p_B = p_in[1];
  assign p_C = p_in[2];
  assign p_D = p_in[3];
  
  //???? p_in
  initial
  begin
    //???????
    p_in = 4'b0;
    
    repeat (16)
      #`CLOCK_CYCLE p_in = p_in + 1;
    
    #`CLOCK_CYCLE $stop;
  end
  
  //??????
  initial
    $monitor($time, "  In=%4b, Out=%4b", p_in, p_Y); 

endmodule