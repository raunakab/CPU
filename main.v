`timescale 1ms / 1ns

module main;
	reg  [7:0] a_x;
	reg  [7:0] b_x;
	wire [7:0] res;
	wire       car;

	f_ADD fa
			(
				.a_t(a_x),
				.b_t(b_x),
				.sum(res),
				.car(car)
			);

	initial begin
		#0
		a_x = 8'b00_00_00_00;
		b_x = 8'b00_00_00_00;

		#10
		a_x = 8'b00_00_00_01;
		b_x = 8'b00_00_00_10;

		#20
		a_x = 8'b00_00_00_10;
		b_x = 8'b00_00_00_10;

		#30
		a_x = 8'b00_00_00_11;
		b_x = 8'b00_00_00_11;

		#40
		a_x = 8'b01_11_11_11;
		b_x = 8'b01_11_11_11;

		#50
		a_x = 8'b11_11_11_11;
		b_x = 8'b11_11_11_11;
	end
	initial begin
		$monitor
		(
			"%d + %d = %d (ignore: %d)",
			a_x,
			b_x,
			res,
			car
		);
	end

endmodule