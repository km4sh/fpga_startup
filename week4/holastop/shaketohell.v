module shaketohell(
 input clk,
 input keyin,
 output reg keyout
       );
   reg keybuf = 0;
   always @(posedge clk)begin
      if(keybuf == keyin)begin
         keyout <= keyin;
      end
      keybuf <= keyin;
   end
endmodule // input
