module spset(
               input [11:0] key,
               input        clk,
               output reg   sp,
               output reg   clr
               );
   always @(posedge clk)
     begin
        if(key == 12'h000)
          begin
             sp <= 0;
             clr <= 0;
          end
        else if(key <= 12'h00f)
          begin
             sp <= 1;
          end
        else if(key <= 12'h0ff)
          begin
             sp <= 1;
          end
        else if(key <= 12'hfff)
          begin
             clr <= 1;
          end
     end // always @ (posedge clk)
endmodule // ledtest
