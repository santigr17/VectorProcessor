module imem(
		input		logic	[13:0]	pc,
		output	logic	[12:0]	instruction
		);
				
	logic	[12:0] RAM[16383:0] = '{default:13'b0};
	
	initial begin
		$readmemb("D:/santi/Proyectos/Arqui2/Proyecto2/instructions.txt",RAM);		
	end
		
	assign instruction = RAM[pc];
endmodule
