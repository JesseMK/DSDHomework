//File: compare1b.v
`timescale 10 ns / 1 ns

module compare1b(y, b, a);
  
  output y;
  input b,a;
  
  assign y = (a==b) ? 1:0;
  
endmodule