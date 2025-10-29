vlog fourbitFA.sv tb_fourbitFA.sv
vopt work.tb_fourbitFA -o tb_fourbitFA_opt +acc
vsim tb_fourbitFA_opt
add wave *
run -all
