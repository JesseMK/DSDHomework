//File: 2_5_BCD2Excess3.v

module BCD2Excess3(dat_out, dat_in);
  
  //????????
  output reg [3:0] dat_out;
  input [3:0] dat_in;
  
  //??always ?????????????????
  always @(*)
    if (dat_in >= 4'b0 && dat_in <= 4'b1001) //???????
      dat_out = dat_in +3;                   //?3????BCD?????8421??3????
    else dat_out = 4'bx;                     //???????x
  
endmodule