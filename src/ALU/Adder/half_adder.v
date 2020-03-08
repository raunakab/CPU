module h_ADD
	(
		input  wire a,
		input  wire b,
		input  wire c,
		output wire s_out,
		output wire c_out
	);

	assign s_out = (c ^ (a ^ b));
	assign c_out = (~c & a & b) | (c & (a | b));

endmodule