module mux2_1(i0, i1, a, o);

input i0, i1, a;
output o;

wire i0_q, i1_q;

nand nand_i0 (i0_q, i0, a);
nand nand_i1 (i1_q, i1, ~a);
nand nand_o (o, i0_q, i1_q);

endmodule 