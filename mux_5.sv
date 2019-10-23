module mux_5(select, ent1, ent2, ent3, ent4, ent5, sal1);

	input logic [2:0] select;
	input logic [7:0] ent1, ent2, ent3, ent4, ent5;
	output logic [7:0] sal1;
	
	always @(ent1 or ent2 or ent3 or ent4 or ent5) begin
		case(select)
			3'b000 : sal1 <= ent1;
			3'b001 : sal1 <= ent2;
			3'b010 : sal1 <= ent3;
			3'b011 : sal1 <= ent4;
			3'b100 : sal1 <= ent5;
		endcase
	end
endmodule
