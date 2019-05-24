module elab_6(
	input [3:0] sw[1:0],
	input pba,
	output led[3:0]
);

mux2_1 u1 (sw[0][0], sw[1][0], pba, led[0]);
mux2_1 u2 (sw[0][1], sw[1][1], pba, led[1]);
mux2_1 u3 (sw[0][2], sw[1][2], pba, led[2]);
mux2_1 u4 (sw[0][3], sw[1][3], pba, led[3]);

endmodule 