module mexecute(clk, write_flag, file_enable, dir, data_in, data_out, 
					veca, select_mux, select_lane, vec_out);
		input logic clk, write_flag, file_enable;
		input logic [14:0] dir;
		input logic [63:0] data_in, veca;
		input logic [1:0] select_mux;
		input logic [3:0] select_lane;
		output logic [63:0] data_out, vec_out;
		
	execute execute (veca, select_mux, select_lane, vec_out);
	dmem data_mem (clk, write_flag, file_enable, dir, data_in, data_out);
endmodule
