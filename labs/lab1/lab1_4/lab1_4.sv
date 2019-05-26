module lab1_4 (
	input[1:0] sw,
	output[3:0] led);
	
assign led[0] = ~sw[0] & ~sw[1];
assign led[1] =  sw[0] & ~sw[1];
assign led[2] = ~sw[0] &  sw[1];
assign led[3] =  sw[0] &  sw[1];

endmodule 