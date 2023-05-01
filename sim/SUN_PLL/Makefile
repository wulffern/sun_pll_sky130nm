

TB=tran
#VIEW=Sch
VIEW=Lay

OPT=

test:
	${MAKE} typical OPT="Debug"

typical:
	cicsim run --name ${VIEW}_typical ${TB} ${OPT} ${VIEW} Gt Vt Ktt Tt

slow:
	cicsim run --name ${VIEW}_slow ${TB} ${OPT} ${VIEW} Gt Kss "Th,Tl" Vl

fast:
	cicsim run  --name ${VIEW}_fast ${TB} ${OPT} ${VIEW} Gt Kff "Th,Tl" Vh

tfs:
	cicsim run --name ${VIEW}_tfs ${TB} ${OPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt,Th,Tl" Vt

ttffss:
	cicsim run ${TB} ${OPT} ${VIEW} Gt "Ktt,Kss,Kff" "Tt" Vt

temp:
	cicsim run ${TB} ${OPT} ${VIEW} Gt "Ktt" "Tt,Th,Tl" Vt


all:
	make typical OPT=${OPT}
	make tfs OPT=${OPT}

summary:
	cicsim summary --output "README.md"


plot:
	python3 freq.py tran_LayGtKttKssKffTtThTlVt.run

clean:
	-rm -rf output_*
	-rm -rf __pycache__
	-rm *.run
	-rm *.pdf
	-rm *.csv
