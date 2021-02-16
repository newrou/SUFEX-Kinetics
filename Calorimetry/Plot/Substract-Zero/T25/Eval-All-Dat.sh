#!/bin/bash

./Substract-Exp-Data.py BSF-T25.dat DCM-T25.dat | tee BSF-DCM-T25.dat

./Substract-Exp-Data.py BSF-CH3-T25.dat DCM-T25.dat | tee BSF-CH3-DCM-T25.dat

./Substract-Exp-Data.py BSF-NO2-T25.dat DCM-T25.dat | tee BSF-NO2-DCM-T25.dat


gnuplot Plot-Substract-Data.gnu

#Integrate-Exp-Data.py
