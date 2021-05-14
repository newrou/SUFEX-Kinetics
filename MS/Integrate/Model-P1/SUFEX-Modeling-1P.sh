#!/bin/bash

./start-R.sh Model-1P.R MePhO2SOPh-v1-v2 7.85e-04
./start-R.sh Model-1P.R MePhO2SOPh-v1-v5 7.85e-04
./start-R.sh Model-1P.R NO2PhO2SOPh-v1-v4 7.85e-04
./start-R.sh Model-1P.R NO2PhO2SOPh-v1-v5 7.85e-04
./start-R.sh Model-1P.R PhO2SOPh-v1-v3 7.85e-04
./start-R.sh Model-1P.R PhO2SOPh-v1-v5 7.85e-04
./start-R.sh Model-1P-2021.R PhO2SOPh-2021-v1-4n 7.85e-04

./start-R.sh Model-1P-C.R MePhO2SOPh-v1-v2 7.85e-04 0.05
./start-R.sh Model-1P-C.R MePhO2SOPh-v1-v5 7.85e-04 0.05
./start-R.sh Model-1P-C.R NO2PhO2SOPh-v1-v4 7.85e-04 0.05
./start-R.sh Model-1P-C.R NO2PhO2SOPh-v1-v5 7.85e-04 0.05
./start-R.sh Model-1P-C.R PhO2SOPh-v1-v3 7.85e-04 0.05
./start-R.sh Model-1P-C.R PhO2SOPh-v1-v5 7.85e-04 0.05
./start-R.sh Model-1P-C-2021.R PhO2SOPh-2021-v1-4n 7.85e-04 0.05

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

#atril Exp-Zero.pdf

#qpdf --empty --pages BSF-NO2-DCM-T20-1P.pdf z -- BSF-NO2-DCM-T20-1P-opt.pdf
#MePhO2SOPh-v1-v2.csv
#MePhO2SOPh-v1-v5.csv
#NO2PhO2SOPh-v1-v4.csv
#NO2PhO2SOPh-v1-v5.csv
#PhO2SOPh-v1-v3.csv
#PhO2SOPh-v1-v5.csv

