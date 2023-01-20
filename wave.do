onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /vgatest_tb/clock
add wave -noupdate /vgatest_tb/enable
add wave -noupdate /vgatest_tb/reset
add wave -noupdate /vgatest_tb/scale_h
add wave -noupdate /vgatest_tb/scale_v
add wave -noupdate /vgatest_tb/r
add wave -noupdate /vgatest_tb/g
add wave -noupdate /vgatest_tb/b
add wave -noupdate /vgatest_tb/h
add wave -noupdate /vgatest_tb/v
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {43946471526 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {52500037632 ps}
