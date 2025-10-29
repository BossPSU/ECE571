module tb_fourbitDEC();

reg [1:0] a;
wire [3:0] y;

fourbitDEC fourbitDEC(.*);

logic [3:0] expected_y;

always_comb begin
	case(a)
		2'b00: expected_y = 4'b0001;
      		2'b01: expected_y = 4'b0010;
      		2'b10: expected_y = 4'b0100;
      		2'b11: expected_y = 4'b1000;
      		default: expected_y = 4'b0000;
      	endcase
end

initial begin
	for (int i = 0; i < 4; i++) begin
		a = i[1:0];
		#5
      		if (y != expected_y) begin
      			$display ("Error: A=%b, Y=%b, expected y =%b", a,y,expected_y);
      		end
      	end
      	$finish();
end
endmodule
      	


      	
