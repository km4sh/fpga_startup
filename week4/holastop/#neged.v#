module neged(
	     input      clk,
	     input      key_in,
	     output reg key_en
             );
   reg                  pre_key;

   always @(posedge clk)
     begin
	pre_key <= key_in;
	if({pre_key,key_in} == 2'b10)
	  key_en <= 1'b1;
	else 
	  key_en <= 1'b0;
     end

endmodule 
