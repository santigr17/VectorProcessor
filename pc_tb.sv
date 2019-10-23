module pc_tb();

	//Signals
	logic clk, enable;
	logic [31:0] ent1, sal1;
	
	pc DUT (ent1, sal1, clk, enable);
	
initial begin
	clk = 0;
	enable = 1'b0;
ent1 = 32'b10;

#10;

enable = 1'b1;
ent1 = 32'b11;

#10;
	
end

always #1 clk = ~clk;



endmodule

