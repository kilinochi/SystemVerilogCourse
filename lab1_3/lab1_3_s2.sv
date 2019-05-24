//2 вариант: использование bitwise операторов

module lab1_3_s2 (
	input[1:0] sw,
	input[1:0] key,
	output[7:0] led);
	
assign led[7]= key[1] & key[0] & sw[1]; 
assign led[6]= key[1] & key[0] & sw[0]; 

assign led[5]= key[1] & ~key[0] & sw[1]; 
assign led[4]= key[1] & ~key[0] & sw[0]; 

assign led[3]= ~key[1] & key[0] & sw[1]; 
assign led[2]= ~key[1] & key[0] & sw[0]; 

assign led[1]= ~key[1] & ~key[0] & sw[1]; 
assign led[0]= ~key[1] & ~key[0] & sw[0];


endmodule 