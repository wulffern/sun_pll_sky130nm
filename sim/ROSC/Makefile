######################################################################
##        Copyright (c) 2022 Carsten Wulff Software, Norway
## ###################################################################
## Created       : wulff at 2022-4-27
## ###################################################################
##  The MIT License (MIT)
##
##  Permission is hereby granted, free of charge, to any person obtaining a copy
##  of this software and associated documentation files (the "Software"), to deal
##  in the Software without restriction, including without limitation the rights
##  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
##  copies of the Software, and to permit persons to whom the Software is
##  furnished to do so, subject to the following conditions:
##
##  The above copyright notice and this permission notice shall be included in all
##  copies or substantial portions of the Software.
##
##  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
##  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
##  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
##  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
##  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
##  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
##  SOFTWARE.
##
######################################################################
#----------------------------------------------------------------------------
# SIM
#----------------------------------------------------------------------------

test:
	${MAKE} typical OPT="Debug"

TB=tran
VIEW=Lay

OPT=


all:
	${MAKE} tfs VIEW=Lay
	python3 kvco.py tran_LayGtKttKssKffRlClBsDsTtThTlVt.run

typical:
	cicsim run ${TB} ${OPT} ${VIEW} Gt Ktt Tt Vt Dt Bt

slow:
	cicsim run ${TB} ${OPT} ${VIEW} Gt Kss "Tl" Vl

fast:
	cicsim run ${TB} ${OPT} ${VIEW} Gt Kff "Tl" Vh

tfs:
	cicsim run ${TB} ${OPT} ${VIEW} Gt "Ktt,Kss,Kff"  "Tt,Th,Tl" Vt


ttffss:
	cicsim run ${TB} ${OPT} ${VIEW} Gt "Ktt,Kss,Kff"  "Tt" Vt

temp:
	cicsim run ${TB} ${OPT} ${VIEW} Gt "Ktt"  "Tt,Th,Tl" Vt


clean:
	-rm *.ext
	-rm -rf output_*
	-rm -rf __pycache__
	-rm *.run
	-rm *.pdf
	-rm *.csv
