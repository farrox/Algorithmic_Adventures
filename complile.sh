#!/bin/bash

# Clean up LaTeX auxiliary files one by one
rm -f *.aux
rm -f *.log
rm -f *.toc
rm -f *.xdv
rm -f *.gz
rm -f *.fdb_L*
rm -f *.fdb*
rm -f *.fls
rm -f *.out
rm -f *.bbl
rm -f *.blg
rm -f *.brf
rm -f *.bcf
rm -f *.run.xml
rm -f *.synctex.gz
rm -f *.pdf
rm -f main.idx
rm -f main.ilg
rm -f main.ind
rm -f main.lof
rm -f main.lot
rm -f main.loa
rm -f main.lop


echo "Project cleaned!"

xelatex main.tex 
bibtex main
xelatex main.tex
makeindex main.idx 
xelatex main.tex
#!/bin/bash

# Clean up LaTeX auxiliary files one by one
rm -f *.aux
rm -f *.log
rm -f *.toc
rm -f *.xdv
rm -f *.gz
rm -f *.fdb_L*
rm -f *.fdb*
rm -f *.fls
rm -f *.out
rm -f *.bbl
rm -f *.blg
rm -f *.brf
rm -f *.bcf
rm -f *.run.xml
rm -f *.synctex.gz
rm -f main.idx
rm -f main.ilg
rm -f main.ind
rm -f main.lof
rm -f main.lot
rm -f main.loa
rm -f main.lop
