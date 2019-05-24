module lab5_1(sel, x, y, z, q1, q2, q3);
input [2:0] sel;
input x, y, z;
output reg q1, q2, q3;

initial begin
	q1 = 1'b0;
	q2 = 1'b0;
	q3 = 1'b0;
end

always @ *
	if(sel == 3'h1) 
			q1 = x;
			
	else if(sel == 3'h2) q2 = y;	
	else
		begin
			q1 = 1'b0;
			q2 = 1'b0;
			q3 = 1'b0;
		end		
endmodule 