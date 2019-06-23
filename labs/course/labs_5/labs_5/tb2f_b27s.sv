`timescale 1 ns/ 100 ps
module tb2f_b27s;
localparam N = 4;

reg	[N - 1:0]	sw;
wire	[2*N - 2:0]	ss_a;
reg	[N - 1:0]	input_mem	[0:N*N - 1];
reg	[2*N - 2:0]	exp_mem		[0:N*N - 1];
integer			i;

b27s b27s_test(.sw(sw),.ss_a(ss_a));

initial
begin
	$readmemb("input_b27s.dat", input_mem);
	$readmemb("exp_b27s.dat",   exp_mem);
end

initial
begin
	for (i = 0; i < N*N; i = i + 1)
	begin
		sw = input_mem[i]; 
		#5;
		if (exp_mem[i] != ss_a) err_task;
	end
		
	$display("\n**SIMULATION PASSED SUCCESSFULLY**\n");
	$stop;
end

task err_task;
begin
	$display("Time:%t ERROR: expected=%0b result=%0b \n", $realtime, exp_mem[i], ss_a);
	$stop;
end
endtask

endmodule
