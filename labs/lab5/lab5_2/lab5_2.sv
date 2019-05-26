(*	multstyle = "dsp" *)
module lab5_2(
	input [1:0] a, b, c, d,
	input sel, clk,
	output [7:0] led, 
	output supply0 [9:8] led0
);

reg [7:0] x, y;
reg [1:0] a_, b_, c_, d_;
reg [3:0] cd;
reg [1:0] abc;
reg [5:0] first, second, aabc;
reg step = 0;
reg[7:0] res;

always @ (posedge clk) begin //входные регистры
	a_ <= a;
	b_ <= b;
	c_ <= c;
	d_ <= d;
end

always @ (posedge clk) begin //операнды
	cd <= c_ * d_;
	aabc <= a_ * cd;
	if	((step == 1) && (sel == 0))  	abc <= b_;
	else if 	((step == 1) && (sel == 1))	abc <= c_;
	step = ~step;
end

always @ (posedge clk) begin
	if (step) 
		first <= aabc;
	else
		second <= cd * abc;
end

assign res = first + second;
assign led = res;

endmodule 