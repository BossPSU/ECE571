vlog onebitFA.sv tb_onebitFA.sv
vopt work.tb_onebitFA -o tb_onebitFA_opt +acc
vsim tb_onebitFA_opt
add wave *
run -all
