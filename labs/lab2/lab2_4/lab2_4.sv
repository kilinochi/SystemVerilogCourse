module lab2_4 (
	input [3:0] data, 
	input [1:0] sw,
	output reg [6:0] ss_a, ss_b, ss_c, ss_d
	);
	
	
reg [6:0] ss_arr[15:0];
initial begin 
	ss_arr[0] = 7'h40; //0
	ss_arr[1] = 7'h79; //1
	ss_arr[2] = 7'h24; //2
	ss_arr[3] = 7'h30; //3
	ss_arr[4] = 7'h19; //4
	ss_arr[5] = 7'h12; //5
	ss_arr[6] = 7'h02; //6
	ss_arr[7] = 7'h78; //7
	ss_arr[8] = 7'h00; //8
	ss_arr[9] = 7'h10; //9
	ss_arr[10] = 7'h08; //a
	ss_arr[11] = 7'h03; //b
	ss_arr[12] = 7'h46; //c
	ss_arr[13] = 7'h21; //d
	ss_arr[14] = 7'h06; //e
	ss_arr[15] = 7'h0e; //f
	end
	
always @* begin

	ss_a = 7'h40;
	ss_b = 7'h40;
	ss_c = 7'h40;
	ss_d = 7'h40;
	
	case(sw)
		2'b00 : ss_a = ss_arr[data[3:0]];
		2'b01 : ss_b = ss_arr[data[3:0]];
		2'b10 : ss_c = ss_arr[data[3:0]];
		2'b11 : ss_d = ss_arr[data[3:0]];
	endcase



end

endmodule 