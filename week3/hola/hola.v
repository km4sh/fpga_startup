module hola(
        input clk,
        output reg en_ls = 1'b0
);
parameter DIV_NUM = 12;
parameter WIDTH = 8;

   reg [WIDTH-1:0] cnt = {WIDTH{1'b0}};
   always @(posedge clk)
     begin
        if(cnt == DIV_NUM) begin
             cnt <= {WIDTH{1'b0}};
        en_ls <= 1'b1;
     end else begin
        cnt <= cnt +{{(WIDTH-1){1'b0}},1'b1};
        en_ls <= 1'b0;
     end
     end
endmodule // hola
