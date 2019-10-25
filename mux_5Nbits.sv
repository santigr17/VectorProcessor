module mux_5Nbits #(parameter N = 20)
	(input logic [2:0] select,
	input logic [N-1:0] ent1, 
	input logic [N-1:0] ent2, 
	input logic [N-1:0] ent3, 
	input logic [N-1:0] ent4, 
	input logic [N-1:0] ent5,
	output logic [N-1:0] sal1);
	
	always @(ent1 or ent2 or ent3 or ent4 or ent5) begin
		case(select)
			3'b001 : sal1 <= ent1;
			3'b010 : sal1 <= ent2;
			3'b011 : sal1 <= ent3;
			3'b100 : sal1 <= ent4;
			3'b101 : sal1 <= ent5;
		endcase
	end
endmodule
