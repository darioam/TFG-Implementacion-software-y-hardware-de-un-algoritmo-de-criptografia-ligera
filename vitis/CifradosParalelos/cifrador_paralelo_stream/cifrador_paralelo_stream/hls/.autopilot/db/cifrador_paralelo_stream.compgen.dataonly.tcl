# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
plaintext0 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
plaintext1 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
plaintext2 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
plaintext3 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
key { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 48
	offset_end 59
}
ciphertext0 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 60
	offset_end 67
}
ciphertext1 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 76
	offset_end 83
}
ciphertext2 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 92
	offset_end 99
}
ciphertext3 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 108
	offset_end 115
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


