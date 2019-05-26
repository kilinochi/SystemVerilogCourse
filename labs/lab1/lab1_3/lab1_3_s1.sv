//1 вариант: использование оператора условного выбора

module lab1_3_s1 (
	input[1:0] sw,
	input[1:0] key,
	output[7:0] led);
	
assign led[1:0] = (key == 2'b00) ? sw : 2'b00; 
assign led[3:2] = (key == 2'b01) ? sw : 2'b00;
assign led[5:4] = (key == 2'b10) ? sw : 2'b00;
assign led[7:6] = (key == 2'b11) ? sw : 2'b00;


endmodule
