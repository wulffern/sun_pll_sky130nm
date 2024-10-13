TB=tran
#VIEW=Sch
VIEW=Lay

CELL=SUN_PLL_BUF
LIB=SUN_PLL_SKY130NM

OPT=

include ../../tech/make/sim.make

netlistl:
ifeq (${VIEW},Sch)
	${MAKE} netlist CELL=SUN_PLL_BIAS
	${MAKE} netlist CELL=SUN_PLL_ROSC
	${MAKE} netlist
else
	cd ../../work/ && make cdl lpe CELL=SUN_PLL_BUF
	cd ../../work/ && make cdl lpe CELL=SUN_PLL_BIAS
endif
#	cd ../../work && xschem -q -x -b -s -n ../design/${LIB}/${CELL}.sch
#	perl -pi -e "s/\*\*\.subckt/\.subckt/ig;s/\*\*\.ends/\.ends/ig;" ../../work/xsch/${CELL}.spice

test:
	${MAKE} typical TB=ac

typical: netlistl
	cicsim run --name ${VIEW}_typical ${TB} ${OPT} ${VIEW} Gt Ktt Tt Vt

slow: netlistl
	cicsim run --name ${VIEW}_slow ${TB} ${OPT} ${VIEW} Gt Kss "Th,Tl" Vl

fast: netlistl
	cicsim run --name ${VIEW}_fast ${TB} ${OPT} ${VIEW} Gt Kff "Th,Tl" Vh

tfs: netlistl
	cicsim run --name ${VIEW}_tfs ${TB} ${OPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt,Th,Tl" "Vt,Vl,Vh"

etc: netlistl
	cicsim run --name ${VIEW}_etc ${TB} ${OPT} ${VIEW} Gt "Kss,Kff,Ksf,Kfs" "Th,Tl" "Vl,Vh"

etcnotemp: netlistl
	cicsim run --name ${VIEW}_etcnotemp ${TB} ${OPT} ${VIEW} Gt "Kss,Kff,Ksf,Kfs" "Tt" "Vl,Vh"

mc: netlist
	cicsim run --name ${VIEW}_mc --count 30 ${TB} ${OPT} ${VIEW} Gt "Kttmm" "Tt" "Vt"

ntc: netlist
	cicsim run --name ${VIEW}_ntc ${TB} ${OPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt" Vt

temp: netlist
	cicsim run --name ${VIEW}_temp ${TB} ${OPT} ${VIEW} Gt "Ktt" "Tt,Th,Tl" Vt

summary:
	cicsim summary --output "README.md"
	${MAKE} post

DATE=${shell date +%Y-%m-%d}
post:
	cp README.md ../../docs/_posts/${DATE}-${CELL}.markdown
	test -d ../../docs/posts/results/||mkdir  ../../docs/posts/results/
	cp -r results/*.html ../../docs/_posts/results/

clean:
	-rm -rf output_*
	-rm -rf __pycache__
	-rm *.run
	-rm *.pdf
	-rm *.csv
