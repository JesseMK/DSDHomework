// File: 2_3_mux4x1.v

module mux4x1(dout, sel, din);
  
  //??????
  output wire dout;
  
  //??????
  input [1:0] sel;
  input [3:0] din;
  
  //??????
  wire [1:0] notsel;
  wire [3:0] y;
  
  //?? notsel ??
  not (notsel[0], sel[0]);
  not (notsel[1], sel[1]);
    
  //???????
  and (y[0], din[0], notsel[0], notsel[1]);
  and (y[1], din[1], sel[0],    notsel[1]); 
  and (y[2], din[2], notsel[0], sel[1]   );
  and (y[3], din[3], sel[0],    sel[1]   );
    
  //???????
  or  (dout, y[0], y[1], y[2], y[3]);
  
endmodule