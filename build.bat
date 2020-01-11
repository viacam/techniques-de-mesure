rem Build with Docker from Windows 10
set CWD=%cd%
docker run -it -v %CWD%:/srv -w=/srv nowox/latex:1.1 latexmk -pdf -xelatex main.tex
