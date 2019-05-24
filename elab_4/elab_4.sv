module elab_4(
	input clk, rst,
	input [1:0] sw,
	output cout,
	output [2:0] led
);

reg [24:0] 	cnt_div;
reg [2:0]	cnt_main;
reg [1:0]	sw1, sw2, inc2;
reg			rst1, rst2,
				dir;


assign cout = (cnt_div == 25'h1);


always @ (posedge clk) begin //2 triggers
	sw1 <= sw2;
	sw2 <= sw;
	rst1 <= rst2;
	rst2 <= rst;
end

// cnt_div
always @(posedge clk, negedge rst) 
	if (~rst) 
		cnt_div <= 0;
	else
		if (cnt_div == 25'd1)
			cnt_div <= 0;
		else
			cnt_div <= cnt_div + 25'd1;


always @(posedge cout, negedge rst1)
	if(~rst1)
		cnt_main <= 3'd0;
	else
		begin
			if (sw1[0]) dir = 1;
			else 			dir = 0;
			if (sw1[1] && ~cnt_main[0]) 
							inc2 = 2'd2;
			else			inc2 = 2'd1;
			
			cnt_main = cnt_main + (dir ? -1 : 1)*inc2;
		end
		
assign led = cnt_main;

endmodule 