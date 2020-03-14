module OR
	#(
		parameter N = 8
	)
	(
		input  wire [N-1:0] a,
		input  wire [N-1:0] b,
		output wire [N-1:0] result
	);

	generate
		genvar i;
		for (i=0; i<N; i=i+1) begin
			assign result[i] = a[i] | b[i];
		end
	endgenerate

endmodule