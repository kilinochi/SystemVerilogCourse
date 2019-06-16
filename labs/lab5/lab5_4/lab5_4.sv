module lab5_4
#(parameter N = 8)


(	input [N-1:0] da, db, dc,
	input [1:0] sel,
	input clk,
	input load,
	output [N-1:0] q_out);
	
	reg [N-1:0] rg_int;
	reg [N-1:0] temp;
	
	always @* begin
		if(sel==2'b00) 
			temp = da;
		else if(sel == 2'b01) 
			temp = dc;
		else if(sel == 2'b10) 
			temp = db;
		else temp = 0;
	end
	
	always @(posedge clk)
	begin
		if(load)
			rg_int <= temp;
		else 
			rg_int<= {rg_int[N-2:0], rg_int[N-1]};
	end
	
	assign q_out = rg_int;

endmodule	
