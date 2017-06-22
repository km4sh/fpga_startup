module dev2(
	input wire ori,
	output reg dev
);
initial begin
	dev = 0;
	end
always @(posedge ori)
begin
	dev <= !dev;
	end
	endmodule
	
	