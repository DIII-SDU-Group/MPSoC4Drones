set project [lindex $argv 0]
set block_design [lindex $argv 1]
set tcl_out [lindex $argv 2]

open_project $project
open_bd_design $block_design
validate_bd_design -force 
write_bd_tcl $tcl_out
close_project
