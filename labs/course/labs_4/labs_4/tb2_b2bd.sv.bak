`timescale 1 ns/ 100 ps
module tb2_b2bd;
localparam N = 4;

reg	[N - 1:0]	sw;
wire	[2*N - 1:0]	led;
reg	[2*N - 1:0]	led_exp;
integer			i, tmp;

b2bd b2bd_test(.sw(sw), .led(led));

initial
begin
	for (i = 0; i < N*N; i = i + 1)
	begin
		sw = i;
		tmp = i - 10;
		convert;
		#5;
		if (led_exp != led) err_task;
	end
	
	$display("\n**SIMULATION PASSED SUCCESSFULLY**\n");
	$stop;
end

task convert;
begin
	if( i < 10)
		led_exp = {4'b0000,4'b1111 & i};
	if( i > 9) 
		led_exp = tmp + 12;
end
endtask

task err_task;
begin
	$display("Time:%t ERROR: expected=%0d result=%0d \n", $realtime, led_exp, led);
	$stop;
end
endtask

endmodule
