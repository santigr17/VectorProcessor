module decode_mexecute(clk, pc, dir_mem, dato_vectA, escritura_regV, 
mux_key, lane, lectura_dmem, escritura_dmem, select_wb, pc_out, dir_mem_out, 
dato_vectA_out, escritura_regV_out, mux_key_out, lane_out, lectura_dmem_out, 
escritura_dmem_out, select_wb_out);
		input logic clk, escritura_regV, lectura_dmem, escritura_dmem, select_wb;
		input logic [15:0] pc;
		input logic [14:0] dir_mem;
		input logic [22:0] dato_vectA;
		input logic [1:0] mux_key;
		input logic [4:0] lane;
		output logic escritura_regV_out, lectura_dmem_out, escritura_dmem_out, select_wb_out;
		output logic [15:0] pc_out;
		output logic [14:0] dir_mem_out;
		output logic [22:0] dato_vectA_out;
		output logic [1:0] mux_key_out;
		output logic [4:0] lane_out;
		
		logic escritura_regV_temp, lectura_dmem_temp, escritura_dmem_temp, select_wb_temp;
		logic [15:0] pc_temp;
		logic [14:0] dir_mem_temp;
		logic [22:0] dato_vectA_temp;
		logic [1:0] mux_key_temp;
		logic [4:0] lane_temp;
		
	always @(posedge clk) begin
		escritura_regV_temp <= escritura_regV;
		lectura_dmem_temp <= lectura_dmem;
		escritura_dmem_temp <= escritura_dmem;
		select_wb_temp <= select_wb;
		pc_temp <= pc;
		dir_mem_temp <= dir_mem;
		dato_vectA_temp <= dato_vectA;
		mux_key_temp <= mux_key;
		lane_temp <= lane;
		
	
	end
	
	always @(negedge clk) begin
		
		escritura_regV_out <= escritura_regV_temp;
		lectura_dmem_out <= lectura_dmem_temp;
		escritura_dmem_out <= escritura_dmem_temp;
		select_wb_out <= select_wb_temp;
		pc_out <= pc_temp;
		dir_mem_out <= dir_mem_temp;
		dato_vectA_out <= dato_vectA_temp;
		mux_key_out <= mux_key_temp;
		lane_out <= lane_temp;
		
		
	end
	
endmodule

		

				