module lab2_1 (
	input signed [7:0] sw,
	input[1:0] key,
	output[7:0] led,
	output supply0[9:8] led0 
);

assign led = sw >>> ~key[1:0];

endmodule 