

TB=tran
VIEW=Sch
#VIEW=Lay

OPT=

test:
	${MAKE} typical OPT="Debug"

typical:
	cicsim run ${TB} ${OPT} ${VIEW} Gt Ktt Tt Vt

slow:
	cicsim run ${TB} ${OPT} ${VIEW} Gt Kss "Th,Tl" Vl

fast:
	cicsim run ${TB} ${OPT} ${VIEW} Gt Kff "Th,Tl" Vh

tfs:
	cicsim run ${TB} ${OPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt,Th,Tl" Vt

ttffss:
	cicsim run ${TB} ${OPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt" Vt

temp:
	cicsim run ${TB} ${OPT} ${VIEW} Gt "Ktt" "Tt,Th,Tl" Vt

clean:
	-rm -rf output_*
	-rm -rf __pycache__
	-rm *.run
	-rm *.pdf
	-rm *.csv
