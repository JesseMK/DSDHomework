//File: blocing.v

`timescale 1ns/1ns

module blocking( c, b, a, clk);
  
  output reg [3:0] c, b;
  
  input [3:0] a;
  input clk;
  
  //always @(posedge clk)
  //begin
    //b = a;
    //c = b;
    
    //$display("????? c = %d, b = %d, a = %d.", c, b, a);
  //end
  
  always @(posedge clk) b = a;
  always @(posedge clk) c = b;  
  
endmodule
