module register_bank_vect(
	clk, //clock
	dir_A, //direccion del vector A
	dir_B, //direcion del vector B
	dir_esc, //direccion del vector a escribir
	data, //dato a escribir
	signal_esc, //senal de habilitar escritura
	signal_read, //senal de habilitar lectura
	vA, //datos del vector A
	vB //datos del vector B
	);
	
	

	// ---- Input Ports ----//
	input clk;
	input [2:0] dir_A, dir_B, dir_esc;
	input [63:0] data;
	input signal_esc,signal_read;
	
	
	// ---- Output Ports ----//
	output logic [63:0] vA, vB;
	
		// ---- Registers ----//
	logic [63:0] registers [7:0] = '{default:64'b0};
	
	always @(posedge clk)
	begin
		if(signal_read) begin
			vA <= registers[dir_A];
			vB <= registers[dir_B];
		 end
		 
	end
	
	always @(negedge clk)
	begin
		if (signal_esc) begin 
			  registers[dir_esc] <= data;
		end
	end
	
endmodule