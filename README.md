Introductory CPU Design in Icarus Verilog
By:		Raunak Bhagat
Date:	Mar. 7, 2020

Preface:
	This is just a personal introduction into CPU design and engineering. This project is my venture into lower level computer architecture.

Design Hierarchy:
	CPU
	|-- SystemMain.v
	|
	|-- ALU
	|	|-- Main.v
	|	|
	|	|-- Arithmetic
	|	|	|-- Main.v
	|	|	|
	|	|	|-- Adder (w.: Subtractor, Incrementor, and Decrementor)
	|	|	|-- Multiplier
	|	|	|-- Two_Complementor
	|	|
	|	|-- Logic
	|		|-- Main.v
	|		|
	|		|-- Ander
	|		|-- Orrer
	|		|-- XORer
	|		|-- Negator
	|		|-- EQL_Comparator
	|		|-- GTH_Comparator
	|		|-- GEQ_Comparator
	|		|-- LTH_Comparator
	|		|-- LEQ_Comparator
	|
	|-- Registers
	|	|-- Main.v
	|	|
	|	|-- re0
	|	|-- re1
	|	|-- re2
	|	|-- re3
	|	|-- re4
	|	|-- re5
	|	|-- re6
	|	|-- re7
	|	|-- re8
	|	|-- re9
	|	|-- reA
	|	|-- reB
	|	|-- reC
	|	|-- rRP
	|	|-- rBP
	|	|-- rSP