vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/blk_mem_gen_v8_4_7
vlib questa_lib/msim/xil_defaultlib

vmap blk_mem_gen_v8_4_7 questa_lib/msim/blk_mem_gen_v8_4_7
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work blk_mem_gen_v8_4_7  -incr -mfcu  \
"../../../../TP-5-Integrador.gen/sources_1/bd/MemoriaROM/ipshared/3c0c/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/MemoriaROM/ip/MemoriaROM_blk_mem_gen_0_0/sim/MemoriaROM_blk_mem_gen_0_0.v" \
"../../../bd/MemoriaROM/sim/MemoriaROM.v" \

vlog -work xil_defaultlib \
"glbl.v"

