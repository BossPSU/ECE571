//behavioral tb
module tb_fourbitMUL();

reg [3:0] a,b;
wire [7:0] product;

fourbitMUL fourbitMUL(.*);

logic [7:0] expected_product;

initial begin
	for (int i = 0; i < 16; i++) begin
		for (int j = 0; j < 16; j++) begin
			a = i[3:0];
			b = j[3:0];
			#5
			expected_product = a*b;
			if (product != expected_product) begin
				$display ("Error: A=%b, B=%b, expected product =%b, actual product = %b", a,b,expected_product,product);
			end
		end
	end
	$finish();
end
endmodule 
				
			
