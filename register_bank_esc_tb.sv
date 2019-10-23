module register_bank_esc_tb();

	// ---- Input Ports ----//
	logic clk;
	logic [2:0] dir_A, dir_esc;
	logic [7:0] data;
	logic signal_esc,signal_read;
	
	
	// ---- Output Ports ----//
	logic [7:0] eA;
	
	
							
	register_bank_esc	DUT(clk,dir_A,dir_esc,data,signal_esc,signal_read,eA);
	
	initial begin
	
		// ---- Input Ports ----//
		clk =0;
		dir_A=0;
		dir_esc=0;
		data=0;
		signal_esc=0;
		signal_read=0;
		// ---- Output Ports ----//
		eA=0;
		
		#10 dir_esc = 5; data = 6; signal_esc=1; signal_read=0;
		
		#10 dir_esc = 8; data = 6; signal_esc=1; signal_read=0;
		
		#10 dir_A = 5; signal_esc=0; signal_read=1;
		
		#10 dir_A = 8; signal_esc=0; signal_read=1;
		
		#10 $stop;
	
	end
	
	always #1 clk = ~clk;

endmodule