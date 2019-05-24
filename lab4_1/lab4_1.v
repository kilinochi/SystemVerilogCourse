module lab4_1 (
(* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "AF14"*)
input clk,
(* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "AC9, AE11, AD12, AD11"*)
input [3:0]sw,
(* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "AC12, AB12"*)
input [1:0]swd,
(* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "W20, Y19, W19, W17"*)
output [3:0]led,
(* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "AA15, AA14"*)
input [1:0]key
);

localparam modcnt = 25000000;

reg cout;
reg[3:0] q;
reg[24:0] div_cnt;

wire ena, load, aset, sclr, dir;
wire [3:0]din;

assign led=q;
assign ena = cout;
assign load = swd[1];
assign aset = key[0];
assign sclr = key[1];
assign dir = swd[0];
assign din = sw;

always @(posedge clk)
 begin
  cout<=0;
   if (div_cnt==modcnt-1) div_cnt<= 4'h0;
   else div_cnt<= div_cnt+4'h1;
   if (div_cnt==modcnt-2) cout <=1;
end


always @(posedge clk, negedge aset)
if (aset == 1'b0) q<= 4'b1000;
else if (ena)
        casex ({sclr,load,dir})
		  3'b0xx: q<=4'b0;
		  3'b11x: q<=din;
		  3'b101: q<=q+1'b1;
		  3'b100: q<=q-1'b1;
		  endcase


endmodule	  