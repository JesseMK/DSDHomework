// FIle: 2_1_wavegen.v

`timescale 10ns / 1ns //??????10ns???????1ns?

//????????????
`define First       2
`define Second      1
`define Third       9
`define Forth       10
`define Fifth       2
`define Sixth       3
`define Seventh     5

module wavegen();

  reg wave_out; //????

  initial  //??initial ??
  begin
    wave_out <= 3'b0;

    #`First   wave_out <= ~wave_out;
    #`Second  wave_out <= ~wave_out;
    #`Third   wave_out <= ~wave_out;
    #`Forth   wave_out <= ~wave_out;
    #`Fifth   wave_out <= ~wave_out;
    #`Sixth   wave_out <= ~wave_out;
    #`Seventh wave_out <= ~wave_out;
    #2        $stop; //Stop
  end
endmodule