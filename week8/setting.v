module setting(
               input            key,
               input            clk,
               output reg [3:0] where,
               output reg       when,
               output reg [3:0] what
               );
   initial
     begin
        where <= 0;
        when <= 1;
        what <= 0;
     end

   always (@posedge key)
     begin
        case(key)
          12'h000:begin when <= 1;
          12'h001:begin what <= 4'd7; when <= 0;end
          12'h002:begin what <= 4'd4; when <= 0;end
          12'h004:begin what <= 4'd1; when <= 0;end
          12'h008:begin where <= 0;end
          12'h010:begin what <= 4'd8; when <= 0;end
          12'h020:begin what <= 4'd5; when <= 0;end
          12'h040:begin what <= 4'd2; when <= 0;end
          12'h080:begin what <= 4'd0; when <= 0;end
          12'h100:begin what <= 4'd9; when <= 0;end
          12'h200:begin what <= 4'd6; when <= 0;end
          12'h400:begin what <= 4'd3; when <= 0;end
          12'h800:
            begin
               case(where)
                 4'b0000:begin where <= 4'b0001;end
                 4'b0001:begin where <= 4'b0010;end
                 4'b0010:begin where <= 4'b0100;end
                 4'b0100:begin where <= 4'b1000;end
                 4'b1000:begin where <= 4'b0001;end
               endcase // case (where)
            end
          default: what <= 4'b1111;
        endcase // case (key)
