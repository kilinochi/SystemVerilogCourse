`timescale 1 ns/ 100 ps
module tb2_b27s;
localparam N = 4;

reg	[N - 1:0]	sw;
wire	[2*N - 2:0]	ss_a;
reg	[2*N - 2:0]	out_exp;
integer			i;

b27s b27s_test(.sw(sw),.ss_a(ss_a));

initial
begin
	for (i = 0; i < N*N; i = i + 1)
	begin
		sw = i;
		convert;
		#5;
		if (out_exp != ss_a) err_task;
	end
	
	$display("\n**SIMULATION PASSED SUCCESSFULLY**\n");
	$stop;
end

task convert;
begin
	case (i)
		4'd0:  out_exp = 7'h40; // 0
		4'd1:  out_exp = 7'h79; // 1
		4'd2:  out_exp = 7'h24; // 2
		4'd3:  out_exp = 7'h30; // 3
		4'd4:  out_exp = 7'h19; // 4
		4'd5:  out_exp = 7'h12; // 5
		4'd6:  out_exp = 7'h02; // 6
		4'd7:  out_exp = 7'h78; // 7
		4'd8:  out_exp = 7'h00; // 8
		4'd9:  out_exp = 7'h10; // 9
		4'd10: out_exp = 7'h08; // 10
		4'd11: out_exp = 7'h03; // A
		4'd12: out_exp = 7'h46; // B
		4'd13: out_exp = 7'h21; // C
		4'd14: out_exp = 7'h06; // D
		4'd15: out_exp = 7'h0e; // F
	endcase
end
endtask

task err_task;
begin
	$display("Time:%t ERROR: expected=%0b result=%0b \n", $realtime, out_exp, ss_a);
	$stop;
end
endtask

endmodule
