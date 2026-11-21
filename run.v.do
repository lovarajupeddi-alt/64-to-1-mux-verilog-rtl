
vlib work

vlog mux.v
vlog tb.v

vsim work.testbench

add wave sim:/testbench/s5
add wave sim:/testbench/s4
add wave sim:/testbench/s3
add wave sim:/testbench/s2
add wave sim:/testbench/s1
add wave sim:/testbench/s0

add wave sim:/testbench/I*

add wave sim:/testbench/Y

add wave sim:/testbench/dut/*

run -all

echo "64:1 MUX SIMULATION COMPLETED"
