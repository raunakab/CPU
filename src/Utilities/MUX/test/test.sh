iverilog -o out.vvp test.v ../MUX.v
if [ -f "out.vvp" ]; then
	vvp out.vvp
	rm out.vvp
else echo "COMPILATION ERROR"
fi
