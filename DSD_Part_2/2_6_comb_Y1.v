//FIle: 2_6_comb_Y1.v

module comb_Y1(Y, A, B, C);
  
  //????????
  input  A, B, C;
  output Y;
  
  //Y1(A,B,C)=?m(1,2,4,5)?????????
  assign Y = ( A & ~B & ~C)| //3'b001 = 1
             (~A &  B & ~C)| //3'b010 = 2
             (~A & ~B &  C)| //3'b100 = 4
             ( A & ~B &  C); //3'b101 = 5

endmodule