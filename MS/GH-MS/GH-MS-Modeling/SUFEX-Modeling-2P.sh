#!/bin/bash

./start-R.sh Model-2P-2021.R GC-MS_kinetic 7.85e-04
./start-R.sh Model-2P-2021.R GC-MS_kinetic-wo750s 7.85e-04
./start-R.sh Model-2P-C-2021.R GC-MS_kinetic 7.85e-04 0.025
./start-R.sh Model-2P-C-2021.R GC-MS_kinetic-wo750s 7.85e-04 0.025

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
done

