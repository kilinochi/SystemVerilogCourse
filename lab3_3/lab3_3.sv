module lab3_3(
	input aset, sclrr, load, dir, clk,
	input [3:0] din,
	output[3:0]	led,
	output reg ena,
	output supply0 [9:4] led0
);

reg	[24:0]	cnt1; //cnt_div - делитель частоты
reg	[3:0]		cnt2; //q // сам счетчик
reg				cout; // выход счетчика

assign cout = (cnt1 == 24'd3);
assign led = cnt2;
assign ena = cout;


initial begin
	cnt1 <= 25'b0;
	cnt2 <=  4'b0;
end

always @(posedge clk) // cnt_div
	if (cnt1 == 25'd3)
		cnt1 <= 0;
	else
		cnt1 <= cnt1 + 25'd1;


always @(posedge clk) // q
	if(aset == 0) 
		cnt2 <= 4'b1000;
	else
		if (cout)
			if (sclrr == 0)
				cnt2 <= 4'b0;
			else
				if (load)
					cnt2 <= din;
				else
					if (dir)
						cnt2 <= cnt2 + 4'b01;
					else
						cnt2 <= cnt2 - 4'b01;
		else
			cnt2 <= cnt2;
					
endmodule 