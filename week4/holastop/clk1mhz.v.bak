module clk1mhz(
input clk50m,
output reg clk1m = 1'b0
);

reg[5:0]cnt25 = 6'b0;
always @(posedge clk50m)
begin
if(cnt25 == 6'd24)begin
        cnt25 <= 6'b0;
        clk1m <= ~clk1m;
end else begin
        cnt25 <= cnt25 +6'd1;
        end
end
endmodule
