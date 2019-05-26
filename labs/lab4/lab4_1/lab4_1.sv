module lab4_1(
	input clk, rst,
	input [3:0] sw,
	output [1:0] led
	);

	reg [2:0] state;
	reg [3:0] sw1, sw2;
	reg rst1, rst2;

	parameter Idle = 1, Tap1 = 2, Tap2 = 3;

	always @ (posedge clk) begin
		sw1 <= sw2;
		sw2 <= sw;
		rst1 <= rst2;
		rst2 <= rst;
	end

	always @ (posedge clk, posedge rst1) begin
	if (rst1)
		state <= Idle;
	else
	case (state)
		Idle: if (sw1 == 4'b0001) 
		state <= Tap1;
		Tap1: if (sw1 == 4'b0010) 
		state <= Tap2;
	Tap2: case (sw1)
		4'b0100: 
		state <= Tap1;
		4'b1000:
		state <= Idle;
		endcase
		endcase
	end

	always @ (state) begin
	case (state)
		Idle: led = 2'b01;
		Tap1: led = 2'b10;
		Tap2: led = 2'b11;
	default:
		led = 2'b00;
	endcase
	end

endmodule