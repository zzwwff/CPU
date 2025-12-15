-makelib ies_lib/xil_defaultlib -sv \
  "D:/Vivada/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Vivada/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/Vivada/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../CPU.srcs/sources_1/ip/VGAClock/VGAClock_clk_wiz.v" \
  "../../../../CPU.srcs/sources_1/ip/VGAClock/VGAClock.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

