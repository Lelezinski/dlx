onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -subitemconfig {/tb_carry_generator/dut/pg_outputs(1) -expand} /tb_carry_generator/dut/pg_outputs
add wave -noupdate /tb_carry_generator/dut/g_outputs
add wave -noupdate /tb_carry_generator/dut/internal_p_outputs
add wave -noupdate /tb_carry_generator/dut/internal_g_outputs
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {680 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 319
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {0 ps} {11240 ps}
