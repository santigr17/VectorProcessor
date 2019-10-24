module execute(veca, select_mux, select_lane, vec_out);
		input logic [63:0] veca;
		input logic [1:0] select_mux;
		input logic [3:0] select_lane;
		output logic [63:0] vec_out;
		
	logic [7:0] shift;
	assign shift = 8'b11;
	
	logic [63:0] suma;
	//238, 67, 154, 219, 3, 201, 247, 13
	assign suma = 64'b1110111001000011100110101101101100000011110010011111011100001101;
	
	logic [7:0] xor_Key;
	assign xor_key = 8'b10101100;
	
	logic [7:0] mux0_out, mux1_out, mux2_out, mux3_out, mux4_out, mux5_out, mux6_out, mux7_out;
	
	logic [7:0] lane0_out, lane1_out, lane2_out,lane3_out,lane4_out,lane5_out, lane6_out, lane7_out;
	
	mux_3 mux0 (select_mux,shift, suma[7:0], xor_key, mux0_out);
	mux_3 mux1 (select_mux,shift, suma[15:8], xor_key, mux1_out);
	mux_3 mux2 (select_mux,shift, suma[23:16], xor_key, mux2_out);
	mux_3 mux3 (select_mux,shift, suma[31:24], xor_key, mux3_out);
	mux_3 mux4 (select_mux,shift, suma[39:32], xor_key, mux4_out);
	mux_3 mux5 (select_mux,shift, suma[47:40], xor_key, mux5_out);
	mux_3 mux6 (select_mux,shift, suma[55:48], xor_key, mux6_out);
	mux_3 mux7 (select_mux,shift, suma[63:56], xor_key, mux7_out);
	
	lane lane0 (veca[7:0], mux0_out, xor_key, select_lane, lane0_out);
	lane lane1 (veca[15:8], mux1_out, xor_key, select_lane, lane1_out);
	lane lane2 (veca[23:16], mux2_out, xor_key, select_lane, lane2_out);
	lane lane3 (veca[31:24], mux3_out, xor_key, select_lane, lane3_out);
	lane lane4 (veca[39:32], mux4_out, xor_key, select_lane, lane4_out);
	lane lane5 (veca[47:40], mux5_out, xor_key, select_lane, lane5_out);
	lane lane6 (veca[55:48], mux6_out, xor_key, select_lane, lane6_out);
	lane lane7 (veca[63:56], mux7_out, xor_key, select_lane, lane7_out);
	
	assign vec_out = {lane7_out, lane6_out, lane5_out, lane4_out,lane3_out,lane2_out, lane1_out, lane0_out};
endmodule
