module freker(
              input            clk,
              input            signal,
              output reg [3:0] digit1,
              output reg [3:0] digit2,
              output reg [3:0] digit3,
              output reg [3:0] digit4
              );
   reg [31:0]                  cnt;
   reg [2:0]                   sigsync;
   reg [31:0]                  freq;
   reg                         outsig;
   reg [31:0]                  outcnt;
   wire                        sigrise;
   initial
     begin
        cnt <= 0;
        sigsync <= 0;
        freq <= 0;
        digit1 <= 0;
        digit2 <= 0;
        digit3 <= 0;
        digit4 <= 0;
     end
   assign sigrise = ~sigsync[1] & sigsync[0];

   always @(posedge clk)
     begin
        sigsync <= {sigsync[1:0],signal};
        cnt <= cnt + 32'd1;
        if(sigrise)
          begin
	     freq <= freq + 32'd1;
	     if(cnt >= 32'd49999999)
	       begin
		  cnt <= 32'd0;
		  freq <= 32'd0;
		  digit1 <= (freq / 32'd1000000) % 10;
		  digit2 <= (freq / 32'd100000) % 10;
		  digit3 <= (freq / 32'd10000) % 10;
		  digit4 <= (freq / 32'd1000  + 32'd1) % 10;
	       end
          end
     end // always (@posedge clk)
endmodule // freker
