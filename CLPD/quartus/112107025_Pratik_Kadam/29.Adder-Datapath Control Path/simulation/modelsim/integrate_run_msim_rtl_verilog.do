transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.0/112107017_Sahil_Gavankar/Adder_Datapath_Controlpath {C:/intelFPGA_lite/18.0/112107017_Sahil_Gavankar/Adder_Datapath_Controlpath/adder.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.0/112107017_Sahil_Gavankar/Adder_Datapath_Controlpath {C:/intelFPGA_lite/18.0/112107017_Sahil_Gavankar/Adder_Datapath_Controlpath/shift_register.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.0/112107017_Sahil_Gavankar/Adder_Datapath_Controlpath {C:/intelFPGA_lite/18.0/112107017_Sahil_Gavankar/Adder_Datapath_Controlpath/Data_path.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.0/112107017_Sahil_Gavankar/Adder_Datapath_Controlpath {C:/intelFPGA_lite/18.0/112107017_Sahil_Gavankar/Adder_Datapath_Controlpath/control_path.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.0/112107017_Sahil_Gavankar/Adder_Datapath_Controlpath {C:/intelFPGA_lite/18.0/112107017_Sahil_Gavankar/Adder_Datapath_Controlpath/integrate.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.0/112107017_Sahil_Gavankar/Adder_Datapath_Controlpath {C:/intelFPGA_lite/18.0/112107017_Sahil_Gavankar/Adder_Datapath_Controlpath/integrate_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  integrate_tb

add wave *
view structure
view signals
run -all
