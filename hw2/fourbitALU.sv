import ALU_pkg::*;
module fourbitALU(input logic [3:0] a,b, input logic [2:0] opcode, output logic [7:0] result);

logic cin, carry; 
logic [1:0] a_decode;
logic [3:0] y, diff, bitwise_and;
logic [7:0] sum, product;

assign diff = ALU_pkg::subtractor(a,b);
assign bitwise_and = ALU_pkg::bitwise_and(a,b);
assign a_decode = a[1:0];

ALU_opcodes op;
always_comb op = ALU_opcodes'(opcode);

fourbitFA fourbitFA (.*);
fourbitMUL fourbitMUL (.*);
fourbitDEC fourbitDEC (a_decode, y);

always_comb begin
	case(op)
		ADD: result = sum;
		SUB: result = {4'b0000,diff};
		MUL: result = product;
		AND: result = {4'b0000,bitwise_and};
		DEC: result = {4'b0000,y};
		default: result = 8'b00000000;
	endcase
end
endmodule
		
		
