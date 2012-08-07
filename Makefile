latex:
	- pdflatex -synctex=1 -interaction=nonstopmode 'main.tex' | egrep "(Warning|Error)" -i | grep -v "Incompatible color definition"
	- bibtex main
	- makeindex  -l -s styles/index.ist main
	- makeglossaries main
	- pdflatex -synctex=1 -interaction=nonstopmode 'main.tex' | grep -i error
	- pdflatex -synctex=1 -interaction=nonstopmode 'main.tex' | egrep "(Warning|Error)" -i | grep -v "Incompatible color definition"
	- cp main.pdf pdf/current.pdf
	- cp pdf/current.pdf pdf/`date +%F`.pdf

todo:
	ack-grep TODO
clean:
	rm *.aux -f
	rm */**/*.aux -f
	ls *.backup */**/*backup | xargs rm -f
	ls *~ */**/*~ | xargs rm -f


