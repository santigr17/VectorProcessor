module sumador_restador_tb();
//Signals
logic [7:0] ent1, ent2, result;
logic select;

//DUT 
sumador_restador DUT (select, ent1, ent2, result);

//Test
initial begin
select = 0; 
ent1 = 8'b00000010;
ent2 = 8'b00000001;
#10;
select = 1; 
ent1 = 8'b00000010;
ent2 = 8'b00000001;
#10;
end

endmodule
