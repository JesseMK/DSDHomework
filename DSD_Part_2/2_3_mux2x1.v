//File: 2_3_mux2x1.v

module mux2x1(dout, sel, din);
  
  output dout;
  input sel;
  input [1:0] din;
  
  wire bf1out, bf2out;
  
  bufif1 bf1(dout,din[1],sel);
  bufif0 bf2(dout,din[0],sel);
  
endmodule