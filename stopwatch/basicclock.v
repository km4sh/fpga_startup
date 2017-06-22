module basicclock(
                  input            clk,
                  input            sp,
                  input            clr,
                  output reg [3:0] digit1,
                  output reg [3:0] digit2,
                  output reg [3:0] digit3,
                  output reg [3:0] digit4,
                  output reg       ptflag
                  );
   reg [26:0]                      cnt;
   reg [5:0]                       seconds;
   reg [5:0]                       minutes;
   reg [5:0]                       milli;
	reg spflag;
   initial
     begin
        seconds <= 50;
        minutes <= 59;
        ptflag <= 1;
        cnt <= 0;
        spflag <= 0;
     end
   parameter decsec = 27'd2499999;
   always @(posedge (clk && spflag))
     begin
        cnt <= cnt + 1;
        if(cnt == decsec)
          begin
             ptflag <= ~ptflag;
             cnt <= 0;
          end
     end // always @ (posedge clk)
   always @(posedge ptflag)
     begin

        if(clr)
          begin
             milli <= 0;
             minutes <= 0;
             seconds <= 0;
          end

        milli <= milli + 1;
        if(milli >= 9)
          begin
             seconds <= seconds + 1;
             if(seconds >= 59)
               begin
                  seconds <= 0;
                  minutes <= minutes + 1;
                  if(minutes >= 9)
                    begin
                       minutes <= 0;
                    end
               end // if (seconds >= 59)
             digit1 <= minutes ;
             digit2 <= seconds / 10;
             digit3 <= seconds % 10;
             digit4 <= milli;
          end // if (milli >= 9)
     end // always @ (posedge ptflag)
   always @(posedge sp)
     begin
        spflag <= ~spflag;
     end
endmodule // basicclock
