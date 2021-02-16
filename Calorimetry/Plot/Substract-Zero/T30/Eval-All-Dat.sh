#!/bin/bash

./Substract-Exp-Data.py BSF-T30.dat DCM-T30.dat | tee BSF-DCM-T30.dat

./Substract-Exp-Data.py BSF-CH3-T30.dat DCM-T30.dat | tee BSF-CH3-DCM-T30.dat

./Substract-Exp-Data.py BSF-NO2-T30.dat DCM-T30.dat | tee BSF-NO2-DCM-T30.dat


gnuplot Plot-Substract-Data.gnu

#Integrate-Exp-Data.py
