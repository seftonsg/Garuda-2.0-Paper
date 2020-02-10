# UNAME_S := $(shell uname -s)
# ifeq ($(UNAME_S),Darwin)
# 	echo "Warning This may not compile properly on macOS"
# endif

PROJ = Garuda2.0

all:
	pdflatex ${PROJ}
	bibtex   ${PROJ}
	pdflatex ${PROJ}
	pdflatex ${PROJ}

clean:
	rm -rf *.aux *.bbl *.blg *.log
	
clean-all: clean
	rm ${PROJ}.pdf