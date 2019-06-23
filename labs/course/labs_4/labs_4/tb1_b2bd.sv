`timescale 1 ns/ 100 ps
module tb1_b2bd;
localparam N = 4;

reg	[N - 1:0]	sw;
wire	[2*N - 1:0]	led;
integer 		i;

b2bd b2bd_test(.sw(sw), .led(led));

initial
begin
	for (i = 0; i < N*N; i = i + 1)
	begin
		sw = i;
		#5;
	end
	
	$stop;
end

endmodule
