# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
ap_return { 
	dir o
	width 64
	depth 1
	mode ap_ctrl_hs
	offset 16
	offset_end 0
}
plaintext { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
key { 
	dir I
	width 80
	depth 1
	mode ap_none
	offset 40
	offset_end 55
}
interrupt {
}
}
dict set axilite_register_dict control $port_control


