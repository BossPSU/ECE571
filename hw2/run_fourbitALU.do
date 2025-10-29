vlog -sv fourbitALU.sv tb_fourbitALU.sv ALU_pkg.sv
vopt work.tb_fourbitALU -o tb_fourbitALU_opt +acc
vsim tb_fourbitALU_opt
add wave *
run -all
