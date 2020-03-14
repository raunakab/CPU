module uni_DEMUX
	#(
		parameter S = 2
	)
	(
		input  wire              a,
		input  wire [S-1:0]      select,
		output reg  [(2**S)-1:0] result
	);

		always @ (*) begin : blockA
			integer i;

			for (i=0; i<2**S; i=i+1) begin
				if (select == i) result[i] = a;
				else result[i] = 1'b0;
			end
		end

endmodule

module DEMUX
	#(
		parameter N = 1,
		parameter S = 2
	)
	(
		input  wire [N-1:0]             a,
		input  wire [S-1:0]             select,
		output wire [(2**S)-1:0][N-1:0] result
	);

		genvar i;
		genvar j;

		wire [N-1:0][(2**S)-1:0] temp;

		generate
			for (i=0; i<N; i=i+1) begin
				for (j=0; j<(2**S); j=j+1) assign result[j][i] = temp[i][j];
				uni_DEMUX #(.S(S)) ud_i (.a(a[i]), .select(select), .result(temp[i]));
			end
		endgenerate

endmodule