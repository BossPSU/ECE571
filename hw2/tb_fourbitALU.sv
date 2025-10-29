import ALU_pkg::*;
module tb_fourbitALU();

reg [3:0] a,b;
reg [2:0] opcode;
wire [7:0] result;

logic [2:0] expected_opcode;

ALU_opcodes op;
ALU_opcodes expected_op;

always_comb op = ALU_opcodes'(opcode);
always_comb expected_op = ALU_opcodes'(expected_opcode);

fourbitALU fourbitALU(.*);

initial begin
	for (int i = 0; i < 16; i++) begin
		for (int j = 0; j < 16; j++) begin
			a = i[3:0];
			b = j[3:0];
			for (int k = 0; k < 8; k++) begin
				expected_opcode = k[2:0];
				#5
				if (op != expected_op)begin
					$display ("Error: A=%b, B=%b, expected op =%b, actual op = %b", a,b,expected_op,op);
				end
			end
		end
	end
	$finish();
end
endmodule

		
