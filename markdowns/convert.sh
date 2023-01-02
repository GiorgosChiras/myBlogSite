#! /usr/bin/bash

FILE=$(ls *.md)

for FILE in $FILE
do
	echo "Converting $FILE"
	pandoc $FILE -t html --template=../myTemp.html -s -o $FILE.html
done
echo "Conversion completed"

FILE2=$(ls *.html)

echo "Moving files to the HTML directory"
for FILE in $FILE2
do
	mv -iv $FILE ../html/$FILE
done
echo "all done"




