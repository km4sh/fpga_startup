module traffic(
 input wire       clk,
 input wire       clr,
 output reg [2:0] lights
);
   reg [2:0]      state;
   reg [31:0]      count;
   parameter S0 = 3'b001, S1 = 3'b010, S2 = 3'b100, S3 = 3'b101;
//   parameter SEC3 = 32'h08F0D180, SEC10 = 32'h1DCD6500, SEC12 = 32'h23C34600;
	parameter SEC3 = 8'd8,SEC10 = 8'd30, SEC12 = 8'd36;
   always @(posedge clk or posedge clr)
     begin
        if(clr ==1)
          begin
             state <= S0;
             count <= 0;
          end
        else
          case(state)
            S0: if(count<SEC10)
              begin
                 state <= S0;
                 count <= count + 1;
              end
            else
              begin
                 state <= S1;
                 count <= 0;
              end
            S1: if(count<SEC3)
              begin
                 state <= S1;
                 count <= count + 1;
              end
            else
              begin
                 state <= S2;
                 count <= 0;
              end
            S2: if(count<SEC12)
              begin
                 state <= S2;
                 count <= count + 1;
              end
            else
              begin
                 state <= S3;
                 count <= 0;
              end
            S3: if(count<SEC3)
              begin
                 state <= S3;
                 count <= count + 1;
              end
            else
              begin
                 state <= S0;
                 count <= 0;
              end
            default state <= S0;
          endcase // case (state)
     end // always @ (posedge clk or posedge clr)
   reg cnt = 25'h17D783F;
   always @(*)
     begin
        case(state)
          S0: lights = 3'b001;
          S1: lights = 3'b010;
          S2: lights = 3'b100;
          S3: lights = {count[0],lights[1:0]};
        endcase // case (state)
     end // always @ (*)
endmodule // traffic
