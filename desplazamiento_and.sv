module desplazamiento_and(ent1, ent2, ent3, result);
		input logic [7:0] ent1, ent2;
		input logic [2:0] ent3;
		output logic [7:0] result;

		
	always @* begin
		result <= ((ent1 >> ent3)|(ent1 << 4'b1000 - ent3)) & ent2;
	end
endmodule
