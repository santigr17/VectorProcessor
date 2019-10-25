module fetch(clk, select_encript, enable_pc, pc_actual, inst_out);
		input logic clk, enable_pc;
		input logic [1:0] select_encript;
		input logic [15:0] pc_actual;
		output logic [22:0] inst_out;
		
	logic [15:0] adder_out, pc_out;
		
	adder adder (pc_actual, adder_out);
	pc pc (adder_out, pc_out, clk, enable_pc);
	imem instruction_mem (pc_out, select_encript, inst_out);
	
endmodule

		