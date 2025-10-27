set_device -family {PolarFireSoC} -die {MPFS250T_ES} -speed {STD}
read_adl {D:\PION101\icicle-kit-reference-design\MPFS_ICICLE_ES\designer\MPFS_ICICLE_KIT_BASE_DESIGN\MPFS_ICICLE_KIT_BASE_DESIGN.adl}
read_afl {D:\PION101\icicle-kit-reference-design\MPFS_ICICLE_ES\designer\MPFS_ICICLE_KIT_BASE_DESIGN\MPFS_ICICLE_KIT_BASE_DESIGN.afl}
map_netlist
read_sdc {D:\PION101\icicle-kit-reference-design\MPFS_ICICLE_ES\constraint\MPFS_ICICLE_KIT_BASE_DESIGN_derived_constraints.sdc}
read_sdc {D:\PION101\icicle-kit-reference-design\MPFS_ICICLE_ES\constraint\fic_clocks.sdc}
check_constraints {D:\PION101\icicle-kit-reference-design\MPFS_ICICLE_ES\constraint\placer_sdc_errors.log}
estimate_jitter -report {D:\PION101\icicle-kit-reference-design\MPFS_ICICLE_ES\designer\MPFS_ICICLE_KIT_BASE_DESIGN\place_and_route_jitter_report.txt}
write_sdc -mode layout {D:\PION101\icicle-kit-reference-design\MPFS_ICICLE_ES\designer\MPFS_ICICLE_KIT_BASE_DESIGN\place_route.sdc}
