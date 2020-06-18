#!/bin/bash

for fname in *-exp.csv
do
    name=`basename $fname -exp.csv`
    echo "Extract [$name]"
    ../Script/Extract-Plot-Data.py < $name-exp.csv > r.dat
    gnuplot ../Script/Plot-Hf-svg.gnu
    mv r.dat $name.csv
    mv r.svg ../Plot/All/$name.svg
done

rm r.dat
