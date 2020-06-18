#!/bin/bash

echo "<html>" > index.html
echo "<head><meta charset=\"utf-8\"/></head>" >> index.html
echo "<body>" >> index.html
echo "<h3>Kinetics of SUFEX Reactions:</h3>" >> index.html

echo "<h4><a href=\"All/index.html\">All experimental data</a></h4>" >> index.html
echo "<h4><a href=\"Stat/index.html\">Reproducibility of calorimetric studies of the kinetics of SUFEX reactions</a></h4>" >> index.html
echo "<h4><a href=\"Change-T/index.html\">The effect of temperature on the kinetics of SUFEX reactions</a></h4>" >> index.html
echo "<h4><a href=\"Model/index.html\">Kinetic models of SUFEX reactions</a></h4>" >> index.html
echo "<h4><a href=\"Order/index.html\">Study of the order of SUFEX reactions</a></h4>" >> index.html

#echo "<ul>" >> index.html
list=`find .  -maxdepth 1 -mindepth 1 -type d -printf "%f\n" | sort`
for i in $list
do
#  echo " <li><a href=\"$i/index.html\">$i</a></li>" >> index.html
  cd $i
  ./make-index.sh
done
#echo "</ul>" >> index.html

echo "<ul>" >> index.html
list=`ls *.svg`
for i in $list
do
  name=`basename $i .svg`
  echo " <li><a href=\"$name.svg\">$name</a> <a href=\"$name.csv\">dat</a></li>" >> index.html
done
echo "</ul>" >> index.html

echo "</body>" >> index.html
echo "</html>" >> index.html
