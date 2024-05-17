transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+ModuloClockingWizard  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ModuloClockingWizard xil_defaultlib.glbl

do {ModuloClockingWizard.udo}

run 1000ns

endsim

quit -force
