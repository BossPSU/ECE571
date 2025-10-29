module fourbitFA (input logic [3:0] a,b, input logic cin, output logic [7:0] sum , output logic carry);

//interal carry signal and extensions for a and b
logic [7:0] in_carry, a_ext, b_ext;

assign a_ext = {4'b0000,a};
assign b_ext = {4'b0000,b};


//connect adders
onebitFA FA0 (.a(a_ext[0]), .b(b_ext[0]), .cin(cin), .sum(sum[0]), .carry(in_carry[0]));
onebitFA FA1 (.a(a_ext[1]), .b(b_ext[1]), .cin(in_carry[0]), .sum(sum[1]), .carry(in_carry[1]));
onebitFA FA2 (.a(a_ext[2]), .b(b_ext[2]), .cin(in_carry[1]), .sum(sum[2]), .carry(in_carry[2]));
onebitFA FA3 (.a(a_ext[3]), .b(b_ext[3]), .cin(in_carry[2]), .sum(sum[3]), .carry(in_carry[3]));
onebitFA FA4 (.a(a_ext[4]), .b(b_ext[4]), .cin(in_carry[3]), .sum(sum[4]), .carry(in_carry[4]));
onebitFA FA5 (.a(a_ext[5]), .b(b_ext[5]), .cin(in_carry[4]), .sum(sum[5]), .carry(in_carry[5]));
onebitFA FA6 (.a(a_ext[6]), .b(b_ext[6]), .cin(in_carry[5]), .sum(sum[6]), .carry(in_carry[6]));
onebitFA FA7 (.a(a_ext[7]), .b(b_ext[7]), .cin(in_carry[6]), .sum(sum[7]), .carry(in_carry[7]));

//final carry
assign carry = in_carry[7];

endmodule
