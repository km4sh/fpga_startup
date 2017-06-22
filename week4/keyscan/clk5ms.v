module clk5ms(
input clk50m,
output reg clk5ms = 1'b0
);

reg[11:0]cnt25 = 12'b0;
always @(posedge clk50m)
begin
if(cnt25 == 12'd124999)begin
        cnt25 <= 12'b0;
        clk5ms <= ~clk5ms;
end else begin
        cnt25 <= cnt25 + 12'd1;
        end
end
endmodule
