echo "BEGINNING COMPILATION"

iverilog -o out.vvp main.v src/ALU/Adder/full_adder.v src/ALU/Adder/half_adder.v
vvp out.vvp
rm out.vvp
