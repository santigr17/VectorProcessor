module desplazamiento_lineal_tb();
//Signals
logic [7:0] ent1, result;
logic [2:0] ent2;
logic select;

//DUT 
desplazamiento_lineal DUT (select, ent1, ent2, result);

//Test
initial begin
select = 0; 
ent1 = 00000001;
ent2 = 010;
#00000000
select = 1; 
ent1 = 00000010;
ent2 = 001;
#00000010;
end

endmodule
