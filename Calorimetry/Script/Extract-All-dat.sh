#!/bin/bash

for fname in *-exp.csv
do
    name=`basename $fname -exp.csv`
    if [[ ! -e "$name.csv" ]]
    then
	echo "Extract data from file: [$name]"
	../Script/Extract-Plot-Data.py < $name-exp.csv > r.dat
	gnuplot ../Script/Plot-Hf-svg.gnu
	mv r.dat $name.csv
	mv r.svg ../Plot/All/$name.svg
    else
	echo "Scip [$name]"
    fi

    if [[ ! -e "../../docs/All/$name.csv" ]]
    then
	echo "Copy data file: [$name]"
	cp $name.csv ../../docs/All/$name.csv
    else
	echo "Save data file: [$name]"
    fi
done
