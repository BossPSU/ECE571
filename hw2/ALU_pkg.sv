package ALU_pkg;

	typedef enum logic [2:0] {
	ADD = 3'b000, 
	SUB = 3'b001, 
	MUL = 3'b010, 
	AND = 3'b011, 
	DEC = 3'b100
	} ALU_opcodes;
	
	function automatic [3:0] subtractor (input [3:0] a,b);
		return a-b;
	endfunction
	
	function automatic [3:0] bitwise_and (input [3:0] a,b);
		return a&b;
	endfunction
endpackage : ALU_pkg
