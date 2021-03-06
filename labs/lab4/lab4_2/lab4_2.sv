module lab4_2(
	input clk, rst,
	input [1:0] sw,
	output cout,
	output [2:0] led
);

reg [24:0] 	cnt_div;
reg [2:0]	state;
reg [1:0]	sw1, sw2;
reg			rst1, rst2;

parameter 	S0 = 0, S1 = 1, 
				S2 = 2, S3 = 3, 
				S4 = 4, S5 = 5, 
				S6 = 6, S7 = 7;

assign cout = (cnt_div == 25'd25000000);


always @ (posedge clk) begin //2 triggers
	sw1 <= sw2;
	sw2 <= sw;
	rst1 <= rst2;
	rst2 <= rst;
end

// cnt_div
always @(posedge clk, negedge rst) 
	if (~rst) 
		cnt_div <= 0;
	else
		if (cnt_div == 25'd25000000)
			cnt_div <= 0;
		else
			cnt_div <= cnt_div + 25'd1;

//next state machine			
always @ (posedge cout, negedge rst1)
	if (~rst1)
		state <= S0;
	else
		case (state)
			S0: 
				if (sw1 == 2'b00) state <= S1; else
				if (sw1 == 2'b10) state <= S2; else
				if (sw1 == 2'b01) state <= S7; else
				if (sw1 == 2'b11) state <= S6;
			S1:
				if (sw1[0]) 
					state <= S0;
				else 	
					state <= S2;		
			S2:
				if (sw1 == 2'b00) state <= S3; else
				if (sw1 == 2'b10) state <= S4; else
				if (sw1 == 2'b01) state <= S1; else
				if (sw1 == 2'b11) state <= S0;
			S3:
				if (sw1[0]) 
					state <= S2;
				else 	
					state <= S4;
			S4:
				if (sw1 == 2'b00) state <= S5; else
				if (sw1 == 2'b10) state <= S6; else
				if (sw1 == 2'b01) state <= S3; else
				if (sw1 == 2'b11) state <= S2;	
			S5:
				if (sw1[0]) 
					state <= S4;
				else 	
					state <= S6;
			S6:
				if (sw1 == 2'b00) state <= S7; else
				if (sw1 == 2'b10) state <= S0; else
				if (sw1 == 2'b01) state <= S5; else
				if (sw1 == 2'b11) state <= S4;	
			S7:
				if (sw1[0]) 
					state <= S6;
				else 	
					state <= S0;	
		endcase

//output		
always @ (state) begin
	case (state)
		S0: led = 3'b000;
		S1: led = 3'b001;
		S2: led = 3'b010;
		S3: led = 3'b011;
		S4: led = 3'b100;
		S5: led = 3'b101;
		S6: led = 3'b110;
		S7: led = 3'b111;
		default:
			led = 3'b000;
	endcase
end

endmodule 