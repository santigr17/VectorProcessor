module mux_2(select, ent1, ent2, sal1);

	input logic select;
	input logic [7:0] ent1, ent2;
	output logic [7:0] sal1;
	
	always @(ent1 or ent2) begin
		case(select)
			1'b0 : sal1 <= ent1;
			1'b1 : sal1 <= ent2;
		endcase
	end
endmodule
