module lab1_1 (
	input a0, a1,
			b0, b1,
	output eq,
	output supply0 [9:1] led0
);
	
assign eq = a0 == b0 & a1 == b1;

endmodule