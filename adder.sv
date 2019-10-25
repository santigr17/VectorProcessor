module adder(ent1, out);
	input logic [15:0] ent1;
	output logic [15:0] out; 
	
	logic ent2 = 16'b1;
	
	always  @* begin
		out <= ent1 + ent2;
	end
endmodule
