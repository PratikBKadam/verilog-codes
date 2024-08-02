transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.0/112107017_Sahil_Gavankar/Sequence_Detector_Moore_011010 {C:/intelFPGA_lite/18.0/112107017_Sahil_Gavankar/Sequence_Detector_Moore_011010/Sequence_Detector_Moore.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.0/112107017_Sahil_Gavankar/Sequence_Detector_Moore_011010 {C:/intelFPGA_lite/18.0/112107017_Sahil_Gavankar/Sequence_Detector_Moore_011010/test_sequence_detector.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  test_sequence_detector

add wave *
view structure
view signals
run -all
