module desplazamiento_and_tb();
//Signals
logic [7:0] ent1, ent2, result;
logic [2:0] ent3;

//DUT 
desplazamiento_and DUT (ent1, ent2, ent3, result);

//Test
initial begin
result = 1'b0;
ent1 = 8'b00000011;
ent3 = 3'b001;//10000001
ent2 = 8'b10101100;
#10;
end

endmodule