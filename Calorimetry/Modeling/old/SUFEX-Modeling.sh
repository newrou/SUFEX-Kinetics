#!/bin/bash

#for i in *.csv; do
# Name=`basename "$i" .csv`
# echo $Name
### ./sect <$i | grep -v "NaN" | sed -e "s/Normalized\ heat\ flow/Normalized_heat_flow/"> $Name.dat
### ./start-R.sh Deconvolution-Kinetic-Concurent.R $Name
#done

#./start-R.sh SUFEX-Model.R Exp-Zero 1.5e-5 -2.5e-5 1.0e3 1.4e4
#./start-R.sh SUFEX-Model.R Exp-Zero 1.206403e-04 -8.166834e-05  -1.000000e+02  8.208365e-05
./start-R.sh SUFEX-Model.R Exp-Zero 4.379935e-05 -2.964468e-05 2.090860e+04 1.683561e-04

#atril Exp-Zero.pdf
