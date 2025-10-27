new_project \
         -name {MPFS_ICICLE_KIT_BASE_DESIGN} \
         -location {D:\PION101\icicle-kit-reference-design\MPFS_ICICLE_ES\designer\MPFS_ICICLE_KIT_BASE_DESIGN\MPFS_ICICLE_KIT_BASE_DESIGN_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {MPFS250T_ES} \
         -name {MPFS250T_ES}
enable_device \
         -name {MPFS250T_ES} \
         -enable {TRUE}
save_project
close_project
