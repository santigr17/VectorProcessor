module mux_4(select, ent1, ent2, ent3, ent4, sal1);

	input logic [1:0] select;
	input logic [19:0] ent1, ent2, ent3, ent4;
	output logic [19:0] sal1;
	
	always @(ent1 or ent2 or ent3) begin
		case(select)
			2'b00 : sal1 <= ent1;
			2'b01 : sal1 <= ent2;
			2'b10 : sal1 <= ent3;
			2'b11 : sal1 <= ent4;
		endcase
	end
endmodule