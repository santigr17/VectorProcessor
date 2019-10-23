module mux_3(select, ent1, ent2, ent3, sal1);

	input logic [1:0] select;
	input logic [7:0] ent1, ent2, ent3;
	output logic [7:0] sal1;
	
	always @(ent1 or ent2 or ent3) begin
		case(select)
			2'b00 : sal1 <= ent1;
			2'b01 : sal1 <= ent2;
			2'b10 : sal1 <= ent3;
		endcase
	end
endmodule
