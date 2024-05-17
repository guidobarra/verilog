transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/blk_mem_gen_v8_4_7
vlib riviera/xil_defaultlib

vmap blk_mem_gen_v8_4_7 riviera/blk_mem_gen_v8_4_7
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work blk_mem_gen_v8_4_7  -incr -v2k5 -l blk_mem_gen_v8_4_7 -l xil_defaultlib \
"../../../../TP-5-Integrador.gen/sources_1/bd/MemoriaROM/ipshared/3c0c/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l blk_mem_gen_v8_4_7 -l xil_defaultlib \
"../../../bd/MemoriaROM/ip/MemoriaROM_blk_mem_gen_0_0/sim/MemoriaROM_blk_mem_gen_0_0.v" \
"../../../bd/MemoriaROM/sim/MemoriaROM.v" \

vlog -work xil_defaultlib \
"glbl.v"

