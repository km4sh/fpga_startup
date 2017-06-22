module bitloop(
	input clk,
	output reg [3:0]a
	
);
initial begin
	a <= 4'h0;
	end
always @(posedge clk)
begin
case(a)begin
	4'd1:a <= 4'd2;
	4'd2:a <= 4'd4;
	4'd4:a <= 4'd8;
	4'd8:a <= 4'd0;
	end
end
endmodule
	