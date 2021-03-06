//File: tb_blocking_nonblocking.v

`timescale  1ns/1ns

`include "blocking.v"
`include "nonblocking.v"

module tb_blocking_nonblocking;
  
  //
  wire [3:0] p_c2, p_b2;
  wire [3:0] p_c1, p_b1;
  
  //
  reg [3:0] p_a;
  reg p_clk;
  
  //
  nonblocking  m_nblk(.c(p_c2), .b(p_b2), .a(p_a), .clk(p_clk));
  
  blocking m_blk(.c(p_c1), .b(p_b1), .a(p_a), .clk(p_clk));
  
  initial
  begin
    p_clk = 0;
    forever #50 p_clk = ~p_clk;
  end
  
  initial
  begin
    $dispaly("At the time: %tns", $time);
    p_a = 4'h3;
    #100 $dispaly("At the time: %tns", $time);
    p_a = 4'h7;
    #100 $dispaly("At the time: %tns", $time);
    p_a = 4'hf;
    #100 $dispaly("At the time: %tns", $time);
    p_a = 4'ha;
    #100 $dispaly("At the time: %tns", $time);
    p_a = 4'h2;
    
    #100 $stop;//
  end
  
endmodule    
