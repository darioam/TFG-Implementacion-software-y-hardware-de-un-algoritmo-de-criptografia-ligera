# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
plaintext_0 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
plaintext_1 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
plaintext_2 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
plaintext_3 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
plaintext_4 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
plaintext_5 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
plaintext_6 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
plaintext_7 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
key { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 80
	offset_end 91
}
ciphertext_0 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 92
	offset_end 99
}
ciphertext_1 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 108
	offset_end 115
}
ciphertext_2 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 124
	offset_end 131
}
ciphertext_3 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 140
	offset_end 147
}
ciphertext_4 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 156
	offset_end 163
}
ciphertext_5 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 172
	offset_end 179
}
ciphertext_6 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 188
	offset_end 195
}
ciphertext_7 { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 204
	offset_end 211
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


