module desplazamiento_circular_tb();
//Signals
logic [7:0] ent1, result;
logic [2:0] ent2;
logic select;

//DUT 
desplazamiento_circular DUT (select, ent1, ent2, result);

//Test
initial begin
select = 1'b0; 
ent1 = 8'b00000001;
ent2 = 3'b010;
#10;
select = 1'b1; 
ent1 = 8'b00000010;
ent2 = 3'b001;
#10;
end

endmodule
