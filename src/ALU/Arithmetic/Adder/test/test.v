`timescale 1ms / 1ns

module main;
	parameter N = 64;

	reg  [N-1:0] a;
	reg  [N-1:0] b;
	wire [N-1:0] result;
	wire         carry;

	f_ADD
		#(
			.N(N)
		)	
	fa
		(
			.a(a),
			.b(b),
			.c_in(1'b0),
			.sum(result),
			.c_out(carry)
		);

	initial begin
		#0
		a = 64'h00_00_00_00_00_00_00_00;
		b = 64'h00_00_00_00_00_00_00_00;

		#10
		a = 64'h00_00_00_00_00_00_00_01;
		b = 64'h00_00_00_00_00_00_00_00;

		#20
		a = 64'h00_00_00_00_00_00_00_01;
		b = 64'h00_00_00_00_00_00_00_01;

		#30
		a = 64'h00_00_00_00_00_00_00_01;
		b = 64'h00_00_00_00_00_00_00_11;

		#40
		a = 64'h00_00_00_00_00_00_00_11;
		b = 64'h00_00_00_00_00_00_00_11;

		#50
		a = 64'h01_01_01_01_01_01_01_01;
		b = 64'h00_10_10_10_10_10_10_11;

		#60
		a = 64'h11_11_11_11_11_11_11_11;
		b = 64'h11_11_11_11_11_11_11_11;

		#70
		a = 64'hff_ff_ff_ff_ff_ff_ff_ff;
		b = 64'hff_ff_ff_ff_ff_ff_ff_ff;
	end

	initial begin
		$monitor
		(
			"%d + %d = %d (ignore: %d)",
			a,
			b,
			result,
			carry
		);
	end

endmodule