module en25ms(
               input      clk50m,
               output reg clk25ms = 1'b0
               );

   reg [5:0]              cnt25 = 6'b0;
   always @(posedge clk50m)
     begin
        if(cnt25 >= 6'd624999)begin
           cnt25 <= 6'b0;
           clk25ms <= ~clk25ms;
        end else begin
           cnt25 <= cnt25 + 6'd1;
        end
     end
endmodule
