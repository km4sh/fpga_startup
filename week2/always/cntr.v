module cntr(
	input wire clk,
	output reg [7:0]cnt
);

always@ (posedge clk)
begin
	cnt <= cnt + 8'b1; //reg [7:0]cnt
	end
endmodule
