module digitleds(
                 input            clk,
                 input [3:0]      digit1,
                 input [3:0]      digit2,
                 input [3:0]      digit3,
                 input [3:0]      digit4,
                 input            ptflag,
                 input            blink,
                 input [3:0]      pos,
                 output reg       led_rst,
                 output reg       segout,
                 output reg [3:0] digout,
                 output wire      led_clk_x
                 );
   reg [7:0]                      seg;
   reg [3:0]                      digit;
   reg [3:0]                      cnt;
   reg [16:0]                     tictoc;
   reg [3:0]                      digbuff;
   reg                            led_clk;
   initial
     begin
        digit <= 4'h3;
        digout <= 4'b0001;
        digbuff <= 4'b0001;
        cnt <= 4'd0;
        led_rst <= 1'b1;
        led_clk <= 1'b0;
     end

   always @(posedge clk)
     begin
        tictoc <= tictoc + 1;
        if(tictoc == 16'd1)
          begin
             led_clk <= ~led_clk;
             tictoc <= 0;
          end
     end

   always @(posedge led_clk)
     begin

        seg <= {seg, 1'b0};

        if((ptflag == 1)&&(digbuff == 4'b1000)&&(cnt == 0))
          begin
             segout <= 0;
          end
        else
          begin
             segout <= seg[7];
          end

        cnt <= cnt + 1;

        if(cnt == 4'd8)
          begin
             case(digbuff)
               4'b0001: begin digout <= 4'b0010; digit <= digit4;end
               4'b0010: begin digout <= 4'b0100; digit <= digit1;end
               4'b0100: begin digout <= 4'b1000; digit <= digit2;end
               4'b1000: begin digout <= 4'b0001; digit <= digit3;end
             endcase // case (digbuff)
             if((ptflag == 0)&&(blink == 0))
               begin
                  case(digit)
                    4'h0: seg <= 8'b11000000;
                    4'h1: seg <= 8'b11111001;
                    4'h2: seg <= 8'b10100100;
                    4'h3: seg <= 8'b10110000;
                    4'h4: seg <= 8'b10011001;
                    4'h5: seg <= 8'b10010010;
                    4'h6: seg <= 8'b10000010;
                    4'h7: seg <= 8'b11111000;
                    4'h8: seg <= 8'b10000000;
                    4'h9: seg <= 8'b10010000;
                    default: seg <= 8'b11111111;
                  endcase // case (digit)
               end // if ((ptflag == 0)&&(blink == 1))
             else
               begin
                  if (digit == pos)
                    seg <= 8'hff;
               end // else: !if((ptflag == 0)&&(blink == 1))
             cnt <= 4'd0;
          end
        if(cnt == 4'd0)
          begin
             digout <= 4'b0000;
             digbuff <= digout;
          end // if (cnt == 4'b0000)
     end // always @ (led_clk posedge)
   assign led_clk_x = (digout != 4'd0)?0:~led_clk;
endmodule // digitleds
