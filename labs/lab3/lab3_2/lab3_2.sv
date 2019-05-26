module lab3_2(
	input [1:0] data [2:0], // каждый элемент двухразрядное число, массив из трех элементов
	output[1:0] res, // рез-т, это то число, которое превалирует
	output[3:2] conf // достоверность рез-та, количество голосующих, проголосовавших одинаково
	//output supply0 [9:4] led0
);

reg [1:0] _conf, _res;

assign res = _res, conf = _conf;

always @(data)
begin

	if ((data[0] == data[1]) && (data[0] == data[2]))
	begin
		_res = data[0];
		if (data[1] == data[2])
			_conf = 3;
		else
			_conf = 2;
	end
	else 	if (data[2] == data[1])
			begin
				_res = data[2];
				_conf = 2;
			end
			else
			begin
				_res = data[1];
				_conf = 0;
			end
end 

endmodule 