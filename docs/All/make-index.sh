#!/bin/bash

echo "<html>" > index.html
echo "<head><meta charset=\"utf-8\"/></head>" >> index.html
echo "<body>" >> index.html
echo "<h3><a href="../index.html">Kinetics of SUFEX Reaction</a></h3>" >> index.html
echo "<h4>All experimental data:</h4>" >> index.html

echo "<ul>" >> index.html
list=`find . -maxdepth 1 -mindepth 1 -type d -printf "%f\n" | sort`
for i in $list
do
  echo " <li><a href=\"$i\">$i</a></li>" >> index.html
  cd $i
  ./make-index.sh
  cd ..
done
echo "</ul>" >> index.html

echo "<ul>" >> index.html
list=`ls *.svg`
for i in $list
do
  name=`basename $i .svg`
  echo " <li><a href=\"$name.svg\"><img src=\"$name.svg\" width=\"10%\"></a> <a href=\"$name.csv\">$name.csv</a></li>" >> index.html
done
echo "</ul>" >> index.html

echo "</body>" >> index.html
echo "</html>" >> index.html
