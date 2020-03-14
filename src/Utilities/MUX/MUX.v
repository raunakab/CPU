module uni_MUX
	#(
		parameter N = 1,
		parameter S = 1
	)
	(
		input  wire [(2**S)-1:0] a,
		input  wire [S-1:0]      select,
		output wire              result
	);

endmodule

module uni_MUX
	#(
		parameter N = 1,
		parameter S = 1
	)
	(
		input wire [(2**S)-1:0][N-1:0] a,
		input wire [S-1:0] select,
		output wire [N-1:0] result
	);

endmodule