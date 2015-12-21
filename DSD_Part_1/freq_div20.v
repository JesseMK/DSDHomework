//File: freq_div20.v

module freq_div20( output reg clk_500K,
                   input clk_10M,
                   input reset);
  
  //????????19 = 5?b1_0011
  //????? 5 ? reg ????????
  reg [4:0] cnt;
  
  always @( posedge clk_10M )
  begin
    if (!reset)
      begin
        clk_500K <= 1'b0;
        cnt <=5'b0;
      end
    else
      begin
        //??????????? clk_500K ??????
        if ( cnt == 5'd19)
          begin
            cnt <= 5'b0;
            clk_500K <= ~clk_500K;
          end
        else
          cnt <= cnt + 1'b1;
      end
  end

endmodule
