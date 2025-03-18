transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Projetos/AOC/bancoregis_8bits/bancoregis_8bits.vhd}

