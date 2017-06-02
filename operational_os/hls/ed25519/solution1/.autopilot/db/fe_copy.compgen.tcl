# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name f_0_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_f_0_read \
    op interface \
    ports { f_0_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name f_1_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_f_1_read \
    op interface \
    ports { f_1_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name f_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_f_2_read \
    op interface \
    ports { f_2_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name f_3_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_f_3_read \
    op interface \
    ports { f_3_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name f_4_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_f_4_read \
    op interface \
    ports { f_4_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name f_5_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_f_5_read \
    op interface \
    ports { f_5_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name f_6_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_f_6_read \
    op interface \
    ports { f_6_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name f_7_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_f_7_read \
    op interface \
    ports { f_7_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name f_8_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_f_8_read \
    op interface \
    ports { f_8_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name f_9_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_f_9_read \
    op interface \
    ports { f_9_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


