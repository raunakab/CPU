module h_ADD
	(
		input  wire a,
		input  wire b,
		input  wire c,
		output wire sum,
		output wire carry
	);

	assign sum   = (c ^ (a ^ b));
	assign carry = (~c & a & b) | (c & (a | b));

endmodule

module f_ADD
	#( parameter N = 2 )
	(
		input  wire [N-1:0] a,
		input  wire [N-1:0] b,
		input  wire         c_in,
		output wire [N-1:0] sum,
		output wire         c_out
	);

	wire [N:0] carries;

	generate
		genvar i;
		for (i=0; i<N; i=i+1) begin
			h_ADD ha_i
				(
					.a(a[i]),
					.b(b[i]),
					.c(carries[i]),
					.sum(sum[i]),
					.carry(carries[i+1])
				);
		end

		assign carries[0] = c_in;
		assign c_out = carries[N];

	endgenerate

endmodule