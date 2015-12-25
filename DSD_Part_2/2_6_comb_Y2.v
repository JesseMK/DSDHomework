//FIle: 2_6_comb_Y2.v

module comb_Y2(Y, A, B, C, D);
  
  //????????
  input  A, B, C, D;
  output Y;
  
  //Y1(A,B,C,D)=?m(4,5,6,7,11,12,13)?????????
  assign Y = (~D &  C & ~B & ~A)| //4'b0100 = 4
             (~D &  C & ~B &  A)| //4'b0101 = 5
             (~D &  C &  B & ~A)| //4'b0110 = 6
             (~D &  C &  B &  A)| //4'b0111 = 7
             ( D & ~C &  B &  A)| //4'b1011 = 11
             ( D &  C & ~B & ~A)| //4'b1100 = 12
             ( D &  C & ~B &  A); //4'b1101 = 13

endmodule