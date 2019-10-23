module desplazamiento_circular(select, ent1, ent2, result);
		input logic select;
		input logic [7:0] ent1;
		input logic [2:0] ent2;
		output logic [7:0] result;
		
//logic [7:0] temp, shift_dato, rotate; 


		
		always @* begin
		
		
			
			if (select) 
			begin
				result <= (ent1 >> ent2)|(ent1 << 4'b1000 - ent2);
			end
				
			else
			begin
				result <= (ent1 << ent2)|(ent1 >> 4'b1000 - ent2);
			end
			
			
		end
endmodule
