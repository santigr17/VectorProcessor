module lane(data1, data2, key, select, data_out);
		logic input [7:0] data1, data2, key;
		logic input [3:0] select;
		logic output [7:0] data_out;
		
		logic [7:0] sum_out;
		logic [7:0] xor_out;
		logic [7:0] desplineal_out;
		logic [7:0] despcircular_out;
		logic [7:0] despand_out;
			
	sumador_restador sumador_restador (select[0], data1, data2, sum_out);
	xorNBits xor_nbits (data1, data2, xor_out);
	desplazamiento_lineal desplazamiento_lineal (select[0], data1, data2[2:0], desplineal_out);
	desplazamiento_circular desplazamiento_circular (select[0], data1, data2[2:0], despcircular_out);
	desplazamiento_and desplazamiento_and (data1, key, data2[2:0], despand_out); 
	mux_5 muxLane (select[3:1], sum_out, xor_out, desplineal_out, despcircular_out, despand_out, data_out);

endmodule
