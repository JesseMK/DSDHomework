//File: 2_3_tb_mux4x1.v

`timescale 10ns / 1ns
`define CLOCK_CYCLE 5

`include "2_3_mux4x1.v"

module tb_mux4x1();
  
  //??????
  reg [3:0] p_din;
  reg [1:0] p_sel;
  
  //??????
  wire p_dout;
  
  mux4x1 m_mux4x1(.dout(p_dout), .sel(p_sel), .din(p_din));
  
  //???
  initial
  begin
    p_sel = 2'b0;
    p_din = 4'b0;
  end
  
  initial
  begin
    //?? sel ???????
    repeat (4)
    begin
      //?????? p_din
      repeat (16)
        #`CLOCK_CYCLE p_din = p_din + 1'b1;
      p_sel = p_sel + 1'b1;
    end
    
    $stop;
  end

endmodule