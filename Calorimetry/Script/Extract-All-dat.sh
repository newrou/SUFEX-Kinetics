#!/bin/bash

for fname in *.csv
do
    name=`basename $fname .csv`
    echo "Extract [$name]"
    ../Script/Extract-Plot-Data.py < $name.csv > r.dat
    gnuplot ../Script/Plot-Hf-svg.gnu
    mv r.dat $name.dat
    mv r.svg $name.svg
done

