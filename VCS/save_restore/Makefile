clean:
	\rm -rf csrc simv* *log ucli.key *vpd *fsdb DVEfiles *sdb  AN.DB 64 _vcs_cp* *Log/ novas* vcst* foo*
compile:
	vcs -timescale=1ps/1ps  top.sv -debug_access+all  -kdb -lca -sverilog
run_reset:
	./simv -i save.tcl -ucli -ucli2Proc

all:	clean compile run_reset
gui:
	./simv -gui 

test1:
	./simv -ucli2Proc -ucli -i test1.tcl
test2:
	./simv -ucli2Proc -ucli -i test2.tcl
test3:
	./simv -ucli2Proc -ucli -i test3.tcl
