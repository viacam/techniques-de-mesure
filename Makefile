all:
	latexmk -pdf -xelatex main.tex

clean:
	$(RM) *.aux *.log *.toc *.pro
