module elab_1(
	input[1:0] sw,
	input co,
	output[1:0] led
);

assign led[1] = sw[1] ^ sw[0] ^ ~co;
assign led[0] = sw[1] & sw[0] | ~co & sw[0] | sw[1] & ~co; 

endmodule 