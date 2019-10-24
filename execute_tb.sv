module execute_tb();

	logic[63:0] vect_out;

	execute DUT (64'b0, 2'b01, 4'b0011, vect_out);
	
endmodule
