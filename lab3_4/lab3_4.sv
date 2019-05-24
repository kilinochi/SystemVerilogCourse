module lab3_4
#(
	parameter SPEED = 25000000
)(
	input clk, load,
	input [7:0] din,
	output [7:0] led,
	output cout

);

reg	[24:0]	cnt_div; // делитель частоты
reg 	[7:0]		tmp; // сдвигающий регистр, циклический в сторону старших


always @(posedge clk) // cnt_div
	if (cnt_div == SPEED)
		cnt_div <= 25'h0;
	else
		cnt_div <= cnt_div + 25'h1;


always @(posedge clk) // srg
if (cout)
	if (load)	tmp <= din;
	else			tmp <= {tmp[6:0], tmp[7]};
	
	
assign cout = (cnt_div == SPEED);
assign led = tmp;
					
endmodule 