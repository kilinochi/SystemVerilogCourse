module lab1_2(
	input[3:0] sw[1:0], 
	input key,
	output[3:0] led,
	output supply0 [9:4] led0
);
	
assign led = (key) ? sw[1] : sw[0];

endmodule 