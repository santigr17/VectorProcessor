module desplazamiento_circular(select, ent1, ent2, result);
		input logic select;
		input logic [7:0] ent1;
		input logic [2:0] ent2;
		output logic [7:0] result;
		
logic [7:0] temp, shift_dato, rotate; 

logic [3:0] shift_number;


		
		always @* begin
		
		shift_number = 4'b1000 - ent2;
			
			if (select) 
			begin
				temp = ent1;
				shift_dato = ent1 >> ent2;
				rotate = temp << shift_number;
				result = shift_dato || rotate;
			end
				
			else
			begin
				temp = ent1;
				shift_dato = ent1 << ent2;
				rotate = temp >> shift_number;
				result = shift_dato || rotate;
			end
			
			
		end
endmodule
