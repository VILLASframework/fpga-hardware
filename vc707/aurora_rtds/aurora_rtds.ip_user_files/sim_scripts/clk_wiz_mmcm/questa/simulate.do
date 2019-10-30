onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib clk_wiz_mmcm_opt

do {wave.do}

view wave
view structure
view signals

do {clk_wiz_mmcm.udo}

run -all

quit -force
