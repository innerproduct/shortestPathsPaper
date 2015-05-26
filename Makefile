TEXFILES	= \
	paper.tex 

all: clean paper.pdf

paper.pdf: $(TEXFILES) 
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex
	pdflatex paper.tex
clean:
	rm -f *.ilg *.aux *.log *.dvi *.idx *.toc *.lof *.lot *.spl
	rm -f *.blg *.bbl *~
	rm -f *.ps
	rm -f *.pdf
	rm -f *.fdb_latexmk
	rm -f *.synctex.gz
	rm -f *.fls

view:
	/usr/X11R6/bin/gv paper.ps &
