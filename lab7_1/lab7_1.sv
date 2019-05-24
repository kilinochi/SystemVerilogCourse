module lab7_1(
	input rst, clk,
	input reg[1:0] a, b, c, d,
	output reg[1:0] led[1:0]
);

reg[1:0] min1, min2, max1, max2, mino, maxo;
assign led[0] = mino;
assign led[1] = maxo;

task min;
	input [1:0] num1, num2;
	output[1:0] res;

	begin
		res <= (num1 < num2) ? num1 : num2;
	end

endtask

task max;
	input [1:0] num1, num2;
	output[1:0] res;
	begin
		res <= (num1 > num2) ? num1 : num2;
	end

endtask

always @ (posedge clk, negedge rst) begin
	if (~rst) begin
		min1 <= 2'b00;
		min2 <= 2'b00;
		max1 <= 2'b00;
		max2 <= 2'b00;
		mino <= 2'b00;
		maxo <= 2'b00;
	end
	else begin
		min(a, 	b, 	min1);
		min(c, 	d, 	min2);
		min(min1,min2, mino);

		max(a, 	b, 	max1);
		max(c, 	d, 	max2);
		max(max1,max2, maxo);
	end
end

endmodule 