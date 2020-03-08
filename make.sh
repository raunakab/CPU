echo "BEGINNING COMPILATION"

#	ALU
	|-- Adder
	|-- Subtractor
	
path_ALU=ALU/

iverilog -o out.vvp main.v 
