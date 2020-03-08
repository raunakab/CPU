`include "../AND.v"
`timescale 1ms / 1ns

module test;
	parameter N = 4;

	reg  [N-1:0] a;
	reg  [N-1:0] b;
	wire [N-1:0] result;

	AND
		#(
			.N(N)
		)	
	fa
		(
			.a(a),
			.b(b),
			.result(result)
		);

	initial begin
		#0
		a = 4'b00_00;
		b = 4'b00_00;

		#10
		a = 4'b00_01;
		b = 4'b00_00;

		#20
		a = 4'b00_00;
		b = 4'b00_01;

		#30
		a = 4'b00_01;
		b = 4'b00_01;

		#40
		a = 4'b00_01;
		b = 4'b01_01;

		#50
		a = 4'b00_11;
		b = 4'b00_11;

		#60
		a = 4'b10_01;
		b = 4'b10_11;

		#70
		a = 4'b11_11;
		b = 4'b11_11;
	end

	initial begin
		$monitor
		(
			"%b and %b = %b",
			a,
			b,
			result,
		);
	end

endmodule
