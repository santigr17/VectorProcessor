module fetch_decode(clk, inst, pc, opcode, dirl_brv, dire_brv, dir_mem, pc_out);
			input logic clk;
			input logic [22:0] inst;
			input logic [15:0] pc;
			output logic [4:0] opcode;
			output logic [2:0] dirl_brv, dire_brv;
			output logic [14:0] dir_mem;
			output logic [15:0] pc_out;
			
			logic [22:0]  instruction;
			logic [15:0] pc_in; 
			
	always @(posedge clk) begin
		
			instruction <= inst;
			pc_in <= pc;

		
	end
	
	always @(negedge clk) begin
	
		pc_out <= pc_in;
		opcode <= instruction[22:18];
		dirl_brv <= instruction[14:12];
		dire_brv <= instruction[17:15];
		dir_mem <= instruction[14:0];
		
	end
endmodule
	