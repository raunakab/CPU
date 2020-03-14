`include "../DEMUX.v"
`timescale 1ms / 1ns

module test;
	parameter N = 2;
	parameter S = 1;
	
	reg  [N-1:0]             a;
	reg  [S-1:0]             select;
	wire [(2**S)-1:0][N-1:0] result;

	integer i;

	DEMUX #(.N(N), .S(S)) ud (.a(a), .select(select), .result(result));

	initial begin
		#0
		a = 2'b00;
		select = 1'b0;

		#10
		a = 2'b01;
		select = 1'b0;

		#20
		a = 2'b10;
		select = 1'b0;

		#30
		a = 2'b11;
		select = 1'b0;

		#40
		a = 2'b00;
		select = 1'b1;

		#50
		a = 2'b01;
		select = 1'b1;

		#60
		a = 2'b10;
		select = 1'b1;

		#70
		a = 2'b11;
		select = 1'b1;
	end
	initial begin : blockTest
		$monitor("%d %d %d", a, select, result);
	end


endmodule