module decode(clk, dir_A, dir_B, dir_esc, data, signal_esc, signal_read, vA, vB, 
dir_AE, dir_escE, dataE, signal_escE, signal_readE, eA );
		input logic clk, signal_esc, signal_read, signal_escE, signal_readE;
		input logic [2:0] dir_A, dir_B, dir_esc, dir_AE, dir_escE;
		input logic [63:0] data;
		input logic [7:0] dataE;
		output logic [63:0] vA, vB;
		output logic [7:0] eA;
		
		register_bank_vect vector_register_bank(clk, dir_A, dir_B, dir_esc, data, signal_esc, signal_read, vA, vB);
		register_bank_esc scale_register_bank(clk, dir_AE, dir_escE, dataE, signal_escE, signal_readE, eA);

endmodule		