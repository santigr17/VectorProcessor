module imem_tb();
	logic [12:0] instruction;
	logic [13:0] pc;
	logic clk;
	imem DUT(pc, instruction);
	
	always #20 clk = ~clk;
	
	initial begin
		instruction = 0;
		pc = 0;
		clk = 0;
		
	end
	
	always @(posedge clk)
		pc = pc+1;
	
	
	
endmodule
