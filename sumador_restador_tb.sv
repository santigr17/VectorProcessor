module sumador_restador_tb();
//Signals
logic [7:0] ent1, ent2, result;
logic select;

//DUT 
sumador_restador DUT (select, ent1, ent2, result);

//Test
initial begin
select = 0; 
ent1 = 00000001;
ent2 = 00000010;
#00000011
select = 1; 
ent1 = 00000010;
ent2 = 00000001;
#00000001;
end

endmodule
