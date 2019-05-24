module elab_3(
	input clk, rst,
	output cout, cout1,
	output reg [3:0] ones,
	output reg [3:0] tens
);

reg [24:0] cnt_div;


assign cout = (cnt_div == 25'h3);
assign cout1 = (ones == 4'h9);


always @(posedge clk, negedge rst) // cnt_div
	if (~rst) 
		cnt_div <= 0;
	else
		if (cnt_div == 25'd3)
			cnt_div <= 0;
		else
			cnt_div <= cnt_div + 25'd1;
	
always @(posedge clk, negedge rst) // edinicy
	if (~rst) 
		ones <= 0;
	else if (cout)
		if (ones == 4'h9) ones <= 4'h0;
		else					ones <= ones + 4'h1;

always @(posedge clk, negedge rst) // desyatky
	if (~rst) 
		tens <= 0;
	else if (cout & cout1)
		if (tens == 4'h9) tens <= 4'h0;
		else					tens <= tens + 4'h1;
endmodule 