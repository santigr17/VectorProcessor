module xorNBits_tb();

	// -- Inputs
	logic [7:0] a, b;
	
	// -- Outputs
	logic [7:0] y;
	
							
	xorNBits	DUT(a, b,y);
	
	initial begin
	
		a=0;
		b=0;
		y=0;
		
		#10 a = 5; b = 6;
		
		#10 a = 8; b = 9;
		
		#10 a = 3; b = 2;
		
		#10 a = 1; b = 2;
		
		#10 $stop;
	
	end

endmodule