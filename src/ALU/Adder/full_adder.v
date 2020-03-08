module f_ADD
	(
		input  wire [7:0] a_t,
		input  wire [7:0] b_t,
		output wire [7:0] sum,
		output wire       car
	);

	wire	car_0,
			car_1,
			car_2,
			car_4,
			car_5,
			car_6;

	h_ADD hA_0
		(
			.a(a_t[0]),
			.b(b_t[0]),
			.c(1'b0),
			.s_out(sum[0]),
			.c_out(car_0)
		);
	h_ADD hA_1
		(
			.a(a_t[1]),
			.b(b_t[1]),
			.c(car_0),
			.s_out(sum[1]),
			.c_out(car_1)
		);
	h_ADD hA_2
		(
			.a(a_t[2]),
			.b(b_t[2]),
			.c(car_1),
			.s_out(sum[2]),
			.c_out(car_2)
		);
	h_ADD hA_3
		(
			.a(a_t[3]),
			.b(b_t[3]),
			.c(car_2),
			.s_out(sum[3]),
			.c_out(car_3)
		);
	h_ADD hA_4
		(
			.a(a_t[4]),
			.b(b_t[4]),
			.c(car_3),
			.s_out(sum[4]),
			.c_out(car_4)
		);
	h_ADD hA_5
		(
			.a(a_t[5]),
			.b(b_t[5]),
			.c(car_4),
			.s_out(sum[5]),
			.c_out(car_5)
		);
	h_ADD hA_6
		(
			.a(a_t[6]),
			.b(b_t[6]),
			.c(car_5),
			.s_out(sum[6]),
			.c_out(car_6)
		);
	h_ADD hA_7
		(
			.a(a_t[7]),
			.b(b_t[7]),
			.c(car_6),
			.s_out(sum[7]),
			.c_out(car)
		);

endmodule