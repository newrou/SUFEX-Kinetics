#!/bin/bash


./start-R.sh Model-2P-C-2021.R MePhO2SOPh-v1-v5 7.85e-04 0.025
./start-R.sh Model-2P-C-2021.R PhO2SOPh-2021-v1-4n 7.85e-04 0.025
./start-R.sh Model-2P-C-2021.R NO2PhO2SOPh-GC-MS-wo750s 7.85e-04 0.025

for i in *-2P.pdf
do
    name=`basename $i .pdf`
    echo "[$name]"
    qpdf --empty --pages $i z -- $name-opt.pdf
done

for i in *-2P-C.pdf
do
    name=`basename $i .pdf`
    echo "[$name]"
    qpdf --empty --pages $i z -- $name-opt.pdf
    rm $i
done

