module fetch_tb();
	//Signals
	logic [22:0] inst_out;
	logic clk, enable_pc;
	logic [1:0] select_encript;
	logic [15:0] pc_actual;
	
	fetch fetch(clk, select_encript, enable_pc, pc_actual, inst_out);

	initial begin
		clk = 0;
		select_encript = 1;
		enable_pc = 1;
		pc_actual = 5;
		#10;
	end
	always #1 clk = ~clk;
endmodule
	