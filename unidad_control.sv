module unidad_control(opcode, lectura_regV, escritura_regV, 
mux_key, lane, lectura_dmem, escritura_dmem, select_wb);
		input logic [4:0] opcode;
		output logic lectura_regV, escritura_regV, lectura_dmem, escritura_dmem, select_wb;
		output [1:0] mux_key;
		output [4:0] lane;
		
	always @* begin
		
		case (opcode)
			5'b00000 : //LOAD 
					begin
							lectura_regV <= 0; 
							escritura_regV <= 1;
							lectura_dmem <= 1;
							escritura_dmem <= 0;
							select_wb <= 1;
							mux_key <= 0;
							lane <= 0;
					end
			5'b00001 : //STORE
					begin
							lectura_regV <= 1; 
							escritura_regV <= 0;
							lectura_dmem <= 0;
							escritura_dmem <= 1;
							select_wb <= 0;
							mux_key <= 0;
							lane <= 0;
					end
			5'b00010 : //RESTA
					begin
							lectura_regV <= 1; 
							escritura_regV <= 1;
							lectura_dmem <= 0;
							escritura_dmem <= 0;
							select_wb <= 0;
							mux_key <= 2'b01;
							lane <= opcode[3:0];
					end
			5'b00011 : //SUMA
					begin
							lectura_regV <= 1; 
							escritura_regV <= 1;
							lectura_dmem <= 0;
							escritura_dmem <= 0;
							select_wb <= 0;
							mux_key <= 2'b01;
							lane <= opcode[3:0];
					end
			5'b00100 : //XOR
					begin
							lectura_regV <= 1; 
							escritura_regV <= 1;
							lectura_dmem <= 0;
							escritura_dmem <= 0;
							select_wb <= 0;
							mux_key <= 2'b10;
							lane <= opcode[3:0];
					end
			5'b00110 : //Desplazamiento izq
					begin
							lectura_regV <= 1; 
							escritura_regV <= 1;
							lectura_dmem <= 0;
							escritura_dmem <= 0;
							select_wb <= 0;
							mux_key <= 2'b00;
							lane <= opcode[3:0];
					end
			5'b00111 : //DEsplazamiento der
					begin
							lectura_regV <= 1; 
							escritura_regV <= 1;
							lectura_dmem <= 0;
							escritura_dmem <= 0;
							select_wb <= 0;
							mux_key <= 2'b00;
							lane <= opcode[3:0];
					end
			5'b01000 : //Desplazamiento circular izq
					begin
							lectura_regV <= 1; 
							escritura_regV <= 1;
							lectura_dmem <= 0;
							escritura_dmem <= 0;
							select_wb <= 0;
							mux_key <= 2'b00;
							lane <= opcode[3:0];
					end
			5'b01001 : //DEsplazamiento circular der
					begin
							lectura_regV <= 1; 
							escritura_regV <= 1;
							lectura_dmem <= 0;
							escritura_dmem <= 0;
							select_wb <= 0;
							mux_key <= 2'b00;
							lane <= opcode[3:0];
					end
			5'b01010 : //Desplazamiento and
					begin
							lectura_regV <= 1; 
							escritura_regV <= 1;
							lectura_dmem <= 0;
							escritura_dmem <= 0;
							select_wb <= 0;
							mux_key <= 2'b00;
							lane <= opcode[3:0];
					end	
			
		endcase
	end
endmodule
	