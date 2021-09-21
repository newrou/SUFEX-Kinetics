#!/bin/bash

./start-R.sh Model-1P-C-2021.R MePhO2SOPh-v1-v5 7.85e-04 0.025
./start-R.sh Model-1P-C-2021.R PhO2SOPh-2021-v1-4n 7.85e-04 0.025
./start-R.sh Model-1P-C-2021.R NO2PhO2SOPh-GC-MS-wo750s 7.85e-04 0.025

list=`ls *.pdf`
for i in *-1P.pdf
do
    name=`basename $i .pdf`
    echo "[$name]"
    qpdf --empty --pages $i z -- $name-opt.pdf
done

list=`ls *.pdf`
for i in *-1P-C.pdf
do
    name=`basename $i .pdf`
    echo "[$name]"
    qpdf --empty --pages $i z -- $name-opt.pdf
    rm $i
done

.csv 

