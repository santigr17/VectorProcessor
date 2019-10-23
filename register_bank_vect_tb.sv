module register_bank_vect_tb();

	// ---- Input Ports ----//
	logic clk;
	logic [2:0] dir_A, dir_B, dir_esc;
	logic [63:0] data;
	logic signal_esc,signal_read;
	
	
	// ---- Output Ports ----//
	logic [63:0] vA, vB;
	
	
							
	register_bank_vect	DUT(clk,dir_A, dir_B, dir_esc,data,signal_esc,signal_read,vA, vB);
	
	initial begin
	
		// ---- Input Ports ----//
		clk =0;
		dir_A=0;
		dir_B=0;
		dir_esc=0;
		data=0;
		signal_esc=0;
		signal_read=0;
		// ---- Output Ports ----//
		vA=0;
		vB=0;
		
		#10 dir_esc = 5; data = 6; signal_esc=1; signal_read=0;
		
		#10 dir_esc = 8; data = 6; signal_esc=1; signal_read=0;
		
		#10 dir_A = 5; dir_B = 8; signal_esc=0; signal_read=1;
		
		#10 dir_A = 5; dir_B = 8; signal_esc=0; signal_read=1;
		
		#10 $stop;
	
	end
	
	always #1 clk = ~clk;

endmodule