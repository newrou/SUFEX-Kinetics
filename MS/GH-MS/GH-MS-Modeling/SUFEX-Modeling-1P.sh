#!/bin/bash

./start-R.sh Model-1P-2021.R GC-MS_kinetic 7.85e-04
./start-R.sh Model-1P-2021.R GC-MS_kinetic-wo750s 7.85e-04
./start-R.sh Model-1P-C-2021.R GC-MS_kinetic 7.85e-04 0.025
./start-R.sh Model-1P-C-2021.R GC-MS_kinetic-wo750s 7.85e-04 0.025

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
done

