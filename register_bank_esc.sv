module register_bank_esc(
	clk, //clock
	dir_A, //direccion del escalar A
	dir_esc, //direccion del escalar a escribir
	data, //dato a escribir
	signal_esc, //senal de habilitar escritura
	signal_read, //senal de habilitar lectura
	eA, //datos del escalar A
	);
	
	

	// ---- Input Ports ----//
	input clk;
	input [2:0] dir_A, dir_esc;
	input [7:0] data;
	input signal_esc,signal_read;
	
	
	// ---- Output Ports ----//
	output logic [7:0] eA;
	
		// ---- Registers ----//
	logic [7:0] registers [7:0] = '{default:7'b0};
	
	always @(posedge clk)
	begin
		if(signal_read) begin
			eA <= registers[dir_A];
		 end
		 
	end
	
	always @(negedge clk)
	begin
		if (signal_esc) begin 
			  registers[dir_esc] <= data;
		end
	end
	
endmodule