module digitleds(
                 input            clk,
                 output reg       led_clk_x,
                 output reg       led_rst,
                 output reg       segout,
                 output reg [3:0] digout
                 );
   reg [7:0]                      seg;
   reg [3:0]                      digit;
   reg [3:0]                      cnt;
   reg                            flag;
   reg                            led_clk;
   reg [16:0]                     tictoc;
   reg [3:0]                      digbuff;
   reg [3:0]                      digit1;
   reg [3:0]                      digit2;
   reg [3:0]                      digit3;
   reg [3:0]                      digit4;
   initial
     begin
        digit <= 4'h3;
        digout <= 4'b0001;
                  digbuff <= 4'b0001;
        cnt <= 4'b0000;
        flag <= 1'b0;
        led_rst <= 1'b1;
        led_clk <= 1'b0;
        digit1 <= 4'h1;
        digit2 <= 4'h2;
        digit3 <= 4'h3;
        digit4 <= 4'h4;
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
        segout <= seg[7];
        cnt <= cnt + 1;
        if(cnt == 4'd8)
          begin
             case(digbuff)
               4'b0001: begin digout <= 4'b0010; digit <= digit3;end
               4'b0010: begin digout <= 4'b0100; digit <= digit4;end
               4'b0100: begin digout <= 4'b1000; digit <= digit1;end
               4'b1000: begin digout <= 4'b0001; digit <= digit2;end
             endcase // case (digbuff)
             cnt <= 4'd0;
          end
        if(cnt == 4'd0)
          begin
             digout <= 4'b0000;
             digbuff <= digout;
             case(digit)
               4'h0: seg <= 8'b00000011;
               4'h1: seg <= 8'b11110011;
               4'h2: seg <= 8'b00100101;
               4'h3: seg <= 8'b01100001;
               4'h4: seg <= 8'b11010001;
               4'h5: seg <= 8'b01001001;
               4'h6: seg <= 8'b00001001;
               4'h7: seg <= 8'b11100011;
               4'h8: seg <= 8'b00000001;
               4'h9: seg <= 8'b01000001;
               default: seg <= 8'b11111111;
             endcase // case (digit)
          end // if (cnt == 4'b0000)
     end // always @ (led_clk posedge)
   assign led_clk_x <= (cnt == 4'd8)?0:led_clk;
endmodule // digitleds
