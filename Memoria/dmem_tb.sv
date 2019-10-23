module dmem_tb();
	logic [63:0] data_in;
	logic [63:0] data_out;
	logic [14:0] dir;
	logic clk, write_flag, file_enable;
	
	
//	input clk, read_write_flag, file_enable,
//	input 	logic [15:0]	dir,
//	input		logic	[63:0]	data_in,
//	output	logic	[63:0]	data_out

	dmem DUT(clk, write_flag, file_enable, dir, data_in, data_out);
	
	always #1 clk = ~clk;
	
	initial begin
		clk = 0;
		file_enable = 1;
		write_flag = 0;
		dir = 0;
		data_in = 0;
		data_out = 0;

		#60
		dir = 9;
		
		#60
		write_flag = 1;
		dir = 9;
		data_in = 64;
		
		#60
		write_flag = 0;
		
		#60
		data_in = 1882;
		dir = 1024;
		
		
		#60
		write_flag = 1;
		
		#60
		write_flag = 0;
		
		#60
		dir = 9;
		
		#60
		dir = 1024;
		
		#60;
		
	end
	
	
endmodule
