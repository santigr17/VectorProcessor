module pc(ent1, sal1, clk, enable);
		input logic [15:0] ent1;
		input logic clk, enable;
		output logic [15:0] sal1;
		
		
		always_ff@(posedge clk) begin
			
			if(enable) sal1 = ent1;
			
		end
endmodule

		
	
		
