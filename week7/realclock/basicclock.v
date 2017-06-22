module basicclock(
                  input            clk,
                  input            setflag,
                  input [3:0]      pos,
                  input [3:0]      setdigit,
                  output reg [3:0] digit1,
                  output reg [3:0] digit2,
                  output reg [3:0] digit3,
                  output reg [3:0] digit4,
                  output reg       ptflag,
                  output reg       blink
                  );
   reg [26:0]                      cnt;
   reg [5:0]                       seconds;
   reg [5:0]                       minutes;
   reg [5:0]                       hours;
   initial
     begin
        seconds <= 50;
        minutes <= 59;
        hours <= 23;
        ptflag <= 1;
        cnt <= 0;
        blink <= 0;
     end
   parameter halfsecond = 27'd24999999;
   always @(posedge clk)
     begin

        if(pos != 0)
          blink <= 1;
        else
          blink <= 0;

        cnt <= cnt + 1;
        if(cnt == halfsecond)
          begin
             ptflag <= ~ptflag;
             cnt <= 0;
          end
     end // always @ (posedge clk)
   always @(posedge ptflag)
     begin
        seconds <= seconds + 1;
        if(setflag)
          begin
             case(pos)
               4'b0001:
                 begin
                    minutes = digit3 * 10 + setdigit;
                 end
               4'b0010:
                 begin
                    minutes <= setdigit * 10 + digit4;
                 end
               4'b0100:
                 begin
                    hours <= digit1 * 10 + setdigit;
                 end
               4'b1000:
                 begin
                    hours <= setdigit * 10 + digit2;
                 end
             endcase
          end
        else
          begin
             if(seconds >= 59)
               begin
                  seconds <= 0;
                  minutes <= minutes + 1;
                  if(minutes == 59)
                    begin
                       minutes <= 0;
                       hours <= hours + 1;
                       if(hours == 23)
                         begin
                            hours <= 0;
                         end
                    end
               end // if (seconds == 59)
          end // else: !if(setflag)
     end
   always @(negedge ptflag)
     begin
        digit1 <= hours / 10;
        digit2 <= hours % 10;
        digit3 <= minutes / 10;
        digit4 <= minutes % 10;
     end
endmodule // basicclock
