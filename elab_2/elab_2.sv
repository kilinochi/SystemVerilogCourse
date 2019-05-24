module elab_2(
	input [3:0] sw,
	input sw7,
	output [7:0] led,
	output supply0 [9:8] led0
);

assign led = sw7 ? (sw << 1) + sw : sw << 1;

endmodule 