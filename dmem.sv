module	dmem 
(
	input clk, write_flag, file_enable,
	input 	logic [14:0]	dir,
	input		logic	[63:0]	data_in,
	output	logic	[63:0]	data_out
);
					
	logic	[63:0]	RAM[24576:0] = '{default:63'b0};
	
	initial begin 
		$readmemb("D:/santi/Proyectos/Arqui2/Proyecto2/data.txt",RAM);
	end
	//
	always_ff@(posedge	clk) 
		begin
			if(~write_flag)
				data_out = RAM[dir];
		end	
	
	
	always_ff@(negedge clk)
		begin
			if(write_flag)
			begin
				RAM[dir] <= data_in;
				if(file_enable)
					$writememb("D:/santi/Proyectos/Arqui2/Proyecto2/data.txt",RAM);		
			end
		end
endmodule
