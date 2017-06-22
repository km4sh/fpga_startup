module foursquare(
input clk,
output reg clk_div
);
parameter DIV_NUM = 12;
parameter WIDTH = 8;

reg [WIDTH-1:0] cnt;
initial cnt<= {WIDTH {1'b0}};
initial clk_div<= 1'b0;

always @(posedge clk)
begin
  if(cnt==DIV_NUM)begin
    cnt <= {WIDTH{1'b0}};
    clk_div<= ~clk_div;
  end else begin 
    cnt <= cnt + {{(WIDTH-1){1'b0}},1'b1};
  end
end
endmodule 