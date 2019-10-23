module xorNBits
#(parameter bits=8)
(input logic [bits-1:0] a, b, output logic [bits-1:0] y);

always @* 
begin

	y <= a ^ b; //XOR vector-escalar

end

endmodule