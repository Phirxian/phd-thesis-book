all:
	echo "" > thesis.bib ;
	for i in content/*.bib; do \
		cat $i >> thesis.bib ; \
	done
  
pdf:
	xelatex thesis.tex

clean:
	rm -f thesis.aux
	rm -f thesis.bbl
	rm -f thesis.blg
	rm -f thesis.idx
	rm -f thesis.lof
	rm -f thesis.log
	rm -f thesis.lot
	rm -f thesis.out
	rm -f thesis.pdf
	rm -f thesis.synctex.gz
	rm -f thesis.toc
	rm -f content/*.aux
	rm -f content/*.bbl
	rm -f content/*.blg
	rm -f content/*.idx
	rm -f content/*.lof
	rm -f content/*.log
	rm -f content/*.lot
	rm -f content/*.out
	rm -f content/*.pdf
	rm -f content/*.synctex.gz
	rm -f content/*.toc
