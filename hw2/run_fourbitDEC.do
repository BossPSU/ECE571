vlog -sv fourbitDEC.sv tb_fourbitDEC.sv
vopt work.tb_fourbitDEC -o tb_fourbitDEC_opt +acc
vsim tb_fourbitDEC_opt
add wave *
run -all
