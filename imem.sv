module imem(
		input		logic	[15:0]	pc,
		input		logic [1:0] select,
		output	logic	[22:0]	instruction
		);
				
	logic	[22:0] RAM[65536:0] = '{default:23'b0};
	
	always @* begin
		case (select)
			2'b00 : $readmemb("C:/Users/danny/Documents/Arqui/Proyecto/data.txt",RAM);
			2'b01 : $readmemb("C:/Users/danny/Documents/Arqui/Proyecto/data.txt",RAM);
			2'b10 : $readmemb("C:/Users/danny/Documents/Arqui/Proyecto/data.txt",RAM);
			2'b11 : $readmemb("C:/Users/danny/Documents/Arqui/Proyecto/data.txt",RAM);
		endcase
		
	end
		
	assign instruction = RAM[pc];
endmodule
