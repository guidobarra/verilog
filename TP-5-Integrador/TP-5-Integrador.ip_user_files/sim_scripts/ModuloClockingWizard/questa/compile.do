vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../TP-5-Integrador.gen/sources_1/bd/ModuloClockingWizard/ipshared/c2c6" \
"../../../bd/ModuloClockingWizard/ip/ModuloClockingWizard_clk_wiz_0_0/ModuloClockingWizard_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/ModuloClockingWizard/ip/ModuloClockingWizard_clk_wiz_0_0/ModuloClockingWizard_clk_wiz_0_0.v" \
"../../../bd/ModuloClockingWizard/sim/ModuloClockingWizard.v" \


vlog -work xil_defaultlib \
"glbl.v"
