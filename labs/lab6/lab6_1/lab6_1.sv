module lab6_1(arst, ena, clk, da, db, res);
parameter width = 4;

input clk, arst, ena;
input [width-1:0] da, db;
output [2*width-1:0] res;

wire [width-1:0] da_int, db_int;
wire [2*width-1:0] mult_res;

rgstr #width in_rg_1 (arst, ena, clk, da, da_int);
rgstr #width in_rg_2 (arst, ena, clk, db, db_int);
mult #width mul (da_int, db_int, mult_res);

rgstr #(2*width) out_rg(arst, ena, clk, mult_res, res);
endmodule 