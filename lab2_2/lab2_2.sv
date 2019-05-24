module lab2_2(
	input signed [3:0] a,
	input signed [3:0] b,
	input sel,
	output signed [7:0] c,
	output supply0 [9:8] led0
);

assign c = (sel) ? a*b : a+b;

endmodule 