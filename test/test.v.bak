module bitloop(
	input clk,
	output reg [3:0]a
	
);
initial begin
	a <= 4'd1;
	end
always @(posedge clk)
begin
	a <= {a[2:0],~|a};
end
endmodule
	