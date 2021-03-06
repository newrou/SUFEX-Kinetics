#!/bin/bash

#./start-R.sh SUFEX-Model-1P.R BSF-DCM-T20 3.148104e-04 0.207834e+00
#./start-R.sh SUFEX-Model-1P.R BSF-CH3-DCM-T20 3.148104e-04 0.207834e+00
#./start-R.sh SUFEX-Model-1P.R BSF-NO2-DCM-T20 3.148104e-04 0.207834e+00

./start-R.sh Model-2P.R MePhO2SOPh-v1-v2 7.85e-04
./start-R.sh Model-2P.R MePhO2SOPh-v1-v5 7.85e-04
./start-R.sh Model-2P.R NO2PhO2SOPh-v1-v4 7.85e-04
./start-R.sh Model-2P.R NO2PhO2SOPh-v1-v5 7.85e-04
./start-R.sh Model-2P.R PhO2SOPh-v1-v3 7.85e-04
./start-R.sh Model-2P.R PhO2SOPh-v1-v5 7.85e-04

#atril Exp-Zero.pdf

#qpdf --empty --pages BSF-NO2-DCM-T20-1P.pdf z -- BSF-NO2-DCM-T20-1P-opt.pdf
#MePhO2SOPh-v1-v2.csv
#MePhO2SOPh-v1-v5.csv
#NO2PhO2SOPh-v1-v4.csv
#NO2PhO2SOPh-v1-v5.csv
#PhO2SOPh-v1-v3.csv
#PhO2SOPh-v1-v5.csv
