//behavioral TB
module tb_onebitFA();

reg a,b,cin;
wire sum, carry;

onebitFA onebitFA (a,b,cin,sum,carry);

logic expected_sum, expected_carry;

initial 
	begin
		for(int i=0; i<8; i++) 
			begin
				{a,b,cin} = i;
				#5
				expected_sum = a^b^cin;
				expected_carry = (a & b) | (b & cin) | (a & cin);
				
				if(expected_sum != sum | expected_carry!=carry)
					begin
						$display("Error: A=%b, B=%b, cin=%b , expected carry = %b, actual carry = %b, expected sum = %b, actual sum = %b", a,b,cin,expected_carry,carry,expected_sum,sum);
					end
			end
			$finish();
	end
endmodule
			

