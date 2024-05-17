vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/blk_mem_gen_v8_4_7
vlib modelsim_lib/msim/xil_defaultlib

vmap blk_mem_gen_v8_4_7 modelsim_lib/msim/blk_mem_gen_v8_4_7
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work blk_mem_gen_v8_4_7  -incr -mfcu  \
"../../../../TP-5-Integrador.gen/sources_1/bd/MemoriaROM/ipshared/3c0c/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/MemoriaROM/ip/MemoriaROM_blk_mem_gen_0_0/sim/MemoriaROM_blk_mem_gen_0_0.v" \
"../../../bd/MemoriaROM/sim/MemoriaROM.v" \

vlog -work xil_defaultlib \
"glbl.v"

