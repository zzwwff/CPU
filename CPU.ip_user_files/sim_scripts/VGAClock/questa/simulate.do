onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib VGAClock_opt

do {wave.do}

view wave
view structure
view signals

do {VGAClock.udo}

run -all

quit -force
