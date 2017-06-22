module breath(
input clk,
output reg led = 1'b0
              );
   reg [15:0] cnt1ms = 16'b0;
   always @(posedge clk)
     begin
        cnt1ms <= cnt1ms + 1'b1;
     end
   reg [9:0] cnt1024 = 10'd0;
   reg       flag = 1'b0;
   always @(posedge clk)
     begin
        case(flag)
          1'b0:begin
           cnt1024 <= cnt1024 + 1'b1;
             if(cnt1024 == 10'hFFFF)begin
                flag <= 1'b1;
             end
          end
          1'b1:begin
           cnt1024 <= cnt1024 - 1'b1;
             if(cnt1024 == 10'h0)begin
                flag <= 1'b0;
             end
          end
        endcase
     end
   always @(posedge clk)
     begin
        if(cnt1ms[15:6] > cnt1024)begin
           led <= 1'b1;
        end else begin
           led <= 1'b0;
        end
     end
endmodule // breath
