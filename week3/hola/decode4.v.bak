module decode4(
input clk,
input en,
output reg [3:0]led = 4'b0000
               );
   reg [1:0]    cnt = 2'b00;
   always @(posedge clk)
     begin
        if(en)begin
           cnt <= cnt + 2'b01;
           case(cnt)
             2'b00:led <= 4'b0001;
             2'b01:led <= 4'b0010;
             2'b10:led <= 4'b0100;
             2'b11:led <= 4'b1000;
           endcase // case (cnt)
        end
     end // always @ (posedge clk)
endmodule // decode4
