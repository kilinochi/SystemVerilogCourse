module b2bd(sw, led);
localparam N = 4;

(* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "AF10, AF9, AC12, AB12" *)
input			[N-1:0]		sw;
(* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "W20, Y19, W19, W17, V18, V17, W16, V16" *)
output reg	[2*N-1:0]	led;

always @(sw)
	if (sw > {4'b1001})
		led = sw + (N*N - 10);
	else
		led = sw;

endmodule
