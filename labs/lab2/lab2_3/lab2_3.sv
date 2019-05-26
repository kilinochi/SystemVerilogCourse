module lab2_3(
	input [3:0] a, b, // a - делимое, b - делитель, оба четырехразрядные числа
	output [7:0] res
	//output supply0 [9:8] led0
);

assign res = {a, 4'h0} / b;

endmodule 