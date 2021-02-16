#!/bin/bash

#./Sum-Exp-Data.py SuFEx-R1-BSF-T20-6-10-20.csv SuFEx-R1-BSF-T20-6-8-20.csv | tee Sum-BSF-T20-1.dat
#./Sum-Exp-Data.py Sum-BSF-T20-1.dat SuFEx-R1-BSF-T20-7-7-20.csv | tee BSF-T20.dat
./Substract-Exp-Data.py BSF-T20.dat DCM-T20.dat | tee BSF-DCM-T20.dat

#./Sum-Exp-Data.py SuFEx-R1-BSF-CH3-T20-6-17-20.csv SuFEx-R1-BSF-CH3-T20-6-22-20.csv | tee BSF-CH3-T20.dat
./Substract-Exp-Data.py BSF-CH3-T20.dat DCM-T20.dat | tee BSF-CH3-DCM-T20.dat

#./Sum-Exp-Data.py SuFEx-R1-BSF-NO2-T20-6-13-20.csv SuFEx-R1-BSF-NO2-T20-6-15-20.csv | tee BSF-NO2-T20.dat
./Substract-Exp-Data.py BSF-NO2-T20.dat DCM-T20.dat | tee BSF-NO2-DCM-T20.dat

gnuplot Plot-Substract-Data.gnu

