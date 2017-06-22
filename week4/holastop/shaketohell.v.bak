module shaketohell(
 input clk,
 input keyin,
 output reg keyout
       );
   reg [16:0] cnt = 16'b0;
   reg        en = 0;
   always @(posedge clk)begin
      cnt <= cnt + 1;
      if(cnt == 0)begin
         en = ~en;
      end
   end
   reg keybuf = 0;
   always @(posedge en)begin
      if(keybuf == keyin)begin
         keyout <= keyin;
      end
      keybuf <= keyin;
   end
endmodule // input
