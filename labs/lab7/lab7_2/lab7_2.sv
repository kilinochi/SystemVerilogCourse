module lab7_2 #(parameter N = 4)
(
	input 			clk,
	input	[N-1:0] 	a, b,
	output[N*2-1:0]led	
);

reg 					load;
reg	[N*2-1:0]	temp_a,
						a_mult_b;
reg	[N-1:0]		temp_b,
						a_before, b_before;
initial begin
	load <= 0;
	a_before <= {N{1'd0}};
	b_before <= {N{1'd0}};	
end

always @(posedge clk) begin
	if (~(a_before == a) | ~(b_before == b))
	begin
		load = 1;
		a_before <= a;
		b_before <= b;
	end
	else
		load = 0;

end
						
always @(posedge clk) begin
	if (load) 
	begin
		temp_a <= a;
		temp_b <= b;
		a_mult_b <= {N{1'd0}};
	end
	else
		repeat(N) begin
			if(temp_b[0]) a_mult_b <= a_mult_b + temp_a;
			temp_a <= temp_a << 1;
			temp_b <= temp_b >> 1;
		end
end

assign led = a_mult_b;

endmodule 