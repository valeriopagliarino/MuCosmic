onbreak resume
onerror resume
vsim -voptargs=+acc work.Hlp2_tb
add wave sim:/Hlp2_tb/u_Hlp2/clk
add wave sim:/Hlp2_tb/u_Hlp2/clk_enable
add wave sim:/Hlp2_tb/u_Hlp2/reset
add wave sim:/Hlp2_tb/u_Hlp2/filter_in
add wave sim:/Hlp2_tb/u_Hlp2/filter_out
add wave sim:/Hlp2_tb/filter_out_ref
run -all
