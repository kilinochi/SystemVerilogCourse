module lab3_1(
	input [3:0] sw [1:0],
	input key,
	output [3:0] led
);
	
	always @* begin
		if (key) begin
			led = (sw[1] > sw[0]) ? sw[1] : sw[0];
		end
		else begin
			led = (sw[1] < sw[0]) ? sw[1] : sw[0];
		end
	end
	
endmodule 