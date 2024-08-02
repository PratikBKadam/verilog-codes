transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+G:/pratik/Pratik\ IMP\ documents/COEP/College/TY/CLPD/quartus/112107025_Pratik_Kadam/7.Full\ adder\ using\ Half\ adder {G:/pratik/Pratik IMP documents/COEP/College/TY/CLPD/quartus/112107025_Pratik_Kadam/7.Full adder using Half adder/ha.v}
vlog -vlog01compat -work work +incdir+G:/pratik/Pratik\ IMP\ documents/COEP/College/TY/CLPD/quartus/112107025_Pratik_Kadam/7.Full\ adder\ using\ Half\ adder {G:/pratik/Pratik IMP documents/COEP/College/TY/CLPD/quartus/112107025_Pratik_Kadam/7.Full adder using Half adder/fullhalfadder.v}

vlog -vlog01compat -work work +incdir+G:/pratik/Pratik\ IMP\ documents/COEP/College/TY/CLPD/quartus/112107025_Pratik_Kadam/7.Full\ adder\ using\ Half\ adder {G:/pratik/Pratik IMP documents/COEP/College/TY/CLPD/quartus/112107025_Pratik_Kadam/7.Full adder using Half adder/testfa.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  testfa

add wave *
view structure
view signals
run -all
