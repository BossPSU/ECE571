//behavioral TB
module tb_fourbitFA();

reg [3:0] a,b;
reg cin;
wire [7:0] sum;
wire carry;

fourbitFA fourbitFA (a,b,cin,sum,carry);

logic [7:0] expected_sum;

initial 
	begin
		
		for(int i=0; i<512; i++) 
			begin
				{a[3],a[2],a[1],a[0],b[3],b[2],b[1],b[0],cin} = i;
				#5
				expected_sum = a + b + cin;
				
				if(expected_sum != sum)
					begin
						$display("Error: A=%b, B=%b, cin=%b , carry = %b, expected sum = %b, actual sum = %b", a,b,cin,carry,expected_sum,sum);
					end
			end
			$finish();
	end
endmodule
