module elab7_1
#(parameter N = 4)
(
	input		clk,
	input	reg [N-1:0] sw	,
	output reg[N-1:0]	gled, bled
);

reg [N-1:0] g, b;

function reg[N-1:0] greybin
(
	input reg[N-1:0] in,
	input	dir
);

	integer i;

	if(dir)
	begin
		greybin[0] = in[0];
		for(i=1; i < N; i=i+1)
			greybin[i] = in[i] ^ in[i-1];
	end
	else begin
		greybin[N-1] = in[N-1];
		for (i=N-2; i >= 0; i=i-1)
			greybin[i] = greybin[i+1] ^ in[i]; 
	end
	
endfunction

always @(posedge clk) begin
		g <= greybin(sw, 0);
		b <= greybin(g, 1);
end

assign gled = g;
assign bled = b;

endmodule 