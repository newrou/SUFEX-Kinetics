#!/bin/bash

#./Sum-Exp-Data.py SuFEx-R1-BSF-NO2-T20-6-13-20.csv SuFEx-R1-BSF-NO2-T20-6-15-20.csv | tee Sum-BSF-NO2-T20.dat

#./Sum-Exp-Data.py SuFEx-R1-BSF-NO2-T25-2-10-20.csv SuFEx-R1-BSF-NO2-T25-2-12-20.csv | tee Sum-BSF-NO2-T25.dat

#./Sum-Exp-Data.py SuFEx-R1-BSF-NO2-T30-5-26-20.csv SuFEx-R1-BSF-NO2-T30-5-29-20.csv | tee Sum-BSF-NO2-T30.dat

#./Substract-Exp-Data.py Sum-Exp-All.dat Sum-Zero-1.dat | tee Exp-Zero.dat

gnuplot Plot-SUFEX-Change-T.gnu
