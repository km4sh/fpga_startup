module keyscan(
               input            clk,
               input [2:0]      keyc,
               output reg [3:0] keyr,
               output reg [3:0] led
               );
   reg [3:0]          keyrbuf = 4'b0;
   always @(posedge clk)begin
      if(!keyc[2])begin
         case(keyrbuf)
           4'b1110:led<=0001;
           4'b1101:led<=0010;
           4'b1011:led<=0011;
           4'b0111:led<=0100;
         endcase // case (keyrbuf)
      end
      if(!keyc[1])begin
         case(keyrbuf)
           4'b1110:led<=0101;
           4'b1101:led<=0110;
           4'b1011:led<=0111;
           4'b0111:led<=1000;
         endcase // case (keyrbuf)
      end
      if(!keyc[0])begin
         case(keyrbuf)
           4'b1110:led<=1001;
           4'b1101:led<=1010;
           4'b1011:led<=1011;
           4'b0111:led<=1100;
         endcase // case (keyrbuf)
      end
      case(keyrbuf)
        4'b1110:keyr<=1101;
        4'b1101:keyr<=1011;
        4'b1011:keyr<=0111;
        4'b0111:keyr<=1110;
      endcase // case (keyrbuf)
      keyrbuf = keyr;
   end // always @ (posedge clk)
endmodule // keyscan
