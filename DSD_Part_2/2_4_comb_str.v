//File: 2_4_comb_str.v

module comb_str(Y, A, B, C, D);
  
  //
  output Y;
  input  A, B, C, D;
  
  //
  wire [0:3] u;
  
  //
  not U1(u[0],D);
  or U3(u[2], A,D);
  not U2(u[1],u[2]);
  and U4(u[3],B,C,u[0]);
  and U5(Y,u[1],u[3]);
  
endmodule
