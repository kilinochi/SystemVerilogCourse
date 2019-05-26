module mult(a, b, res);
parameter width_mult = 8;

input [width_mult-1:0] a, b;
output [2*width_mult-1:0] res;

assign res = a*b;

endmodule 