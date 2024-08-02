transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.0/112107017_Sahil_Gavankar/Up_Down_Counter {C:/intelFPGA_lite/18.0/112107017_Sahil_Gavankar/Up_Down_Counter/Up_Down_Counter.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.0/112107017_Sahil_Gavankar/Up_Down_Counter {C:/intelFPGA_lite/18.0/112107017_Sahil_Gavankar/Up_Down_Counter/test_up_down_counter.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  test_up_down_counter

add wave *
view structure
view signals
run -all
