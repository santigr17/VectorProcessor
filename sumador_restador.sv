module sumador_restador (select, ent1, ent2, result);
	input logic select;
	input logic[7:0] ent1;
	input logic[7:0] ent2;
	output logic[7:0] result;

	always @* begin
		
		if(select) result = ent1 + ent2;
		 
		else result = ent1 - ent2;
		
	end

endmodule
