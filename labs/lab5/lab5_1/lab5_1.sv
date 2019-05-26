module lab5_1(sel, x, y, z, q1, q2, q3);
input [2:0] sel;
input x, y, z;
output reg q1, q2, q3;


always @ *
begin
	q1 = 1'b0;
	q2 = 1'b0;
	q3 = 1'b0;
	
	//case (sel) 
	if(sel == 3'h1) 
			q1 = x;
	if(sel == 3'h2)
			q2 = y;
	if(sel == 3'h3)
			q3 = z;
	else 
			q1 = 1'b0;
			q2 = 1'b0;
			q3 = 1'b0;
end
endmodule 