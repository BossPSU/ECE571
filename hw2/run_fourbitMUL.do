vlog fourbitMUL.sv tb_fourbitMUL.sv
vopt work.tb_fourbitMUL -o tb_fourbitMUL_opt +acc
vsim tb_fourbitMUL_opt
add wave *
run -all
