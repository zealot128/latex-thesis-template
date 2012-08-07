latex:
	- pdflatex -synctex=1 -shell-escape -interaction=nonstopmode 'main.tex'
	- bibtex main
	- makeindex  -l -s styles/index.ist main
	- makeglossaries main
	- pdflatex -synctex=1 -shell-escape -interaction=nonstopmode 'main.tex' > /dev/null
	- pdflatex -synctex=1 -shell-escape -interaction=nonstopmode 'main.tex' > /dev/null
	- cp main.pdf pdf/current.pdf
	- cp pdf/current.pdf pdf/`date +%F`.pdf
todo:
	ack-grep TODO
clean:
	rm *.aux -f
	rm */**/*.aux -f
	ls *.backup */**/*backup | xargs rm -f
	ls *~ */**/*~ | xargs rm -f
	find | grep swp$$ | xargs rm -f

show:
	evince main.pdf


