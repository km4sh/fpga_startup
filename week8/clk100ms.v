module clk100ms(
               input      clk50m,
               output reg clk100ms = 1'b0
               );

   reg [32:0]              cnt = 32'd0;
   always @(posedge clk50m)
     begin
        if(cnt >= 32'd9999999)begin
           cnt <= 32'd0;
           clk100ms <= ~clk100ms;
        end else begin
           cnt <= cnt + 32'd1;
        end
     end
endmodule
