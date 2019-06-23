`timescale 1 ns/ 100 ps
module tb1_b27s;
localparam N = 4;

reg	[N - 1:0]	sw;
wire	[2*N - 2:0]	ss_a;
integer 		i;

b27s b27s_test(.sw(sw),.ss_a(ss_a));

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
