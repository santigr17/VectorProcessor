module mux_2_tb();
	logic [7:0] ent1, ent2, sal1;
	logic select;
	
	mux_2 DUT (select, ent1, ent2,sal1);
	
	initial begin 
		sal1 = 8'b0;
		ent1 = 8'b01;
		ent2 = 8'b110;
		select = 0;
		#10;
		ent1 = 8'b11;
		ent2 = 8'b101;
		select = 1; 
	end
endmodule
