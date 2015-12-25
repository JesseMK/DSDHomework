//File: 2_3_tb_mux2x1.v

`timescale 10ns / 1ns
`define CLOCK_CYCLE 5
`define STOP 4

`include "2_3_mux2x1.v"

module tb_mux2x1();
  
  reg [1:0] p_din;
  reg p_sel;
  wire p_dout;
  integer i, j;
  
  mux2x1 m_mux2x1(.dout(p_dout), .sel(p_sel), .din(p_din));
  
  initial
  begin    
    for (i = 0; i < 2; i = i+1)
    begin
      p_din = 2'b0;
      p_sel = i;
      
      for (j = 0; j < `STOP; j = j+1)
        #`CLOCK_CYCLE p_din = p_din + 2'b01;
    end    
    $stop; 
  end
endmodule
      
