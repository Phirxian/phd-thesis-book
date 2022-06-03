#!/bin/sh

#clear
echo "" > thesis.bib
echo "clear bib"
echo "------------------------------"

# append
for i in content/*.bib
do
    echo "append " $i
    cat $i | wc -l
    cat $i >> thesis.bib
done


echo "------------------------------"
echo "total line:"
cat thesis.bib | wc -l
#biber --tool --output-format bibtex --output-file thesis.bib thesis.bib
echo "------------------------------"
