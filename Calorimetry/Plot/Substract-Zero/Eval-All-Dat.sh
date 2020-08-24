#!/bin/bash

#./Sum-Exp-Data.py SuFEx-R1-BSF-T25-1-24-20.csv SuFEx-R1-BSF-T25-2-7-20.csv | tee Sum-Exp-1.dat
#./Sum-Exp-Data.py Sum-Exp-1.dat SuFEx-R1-BSF-T25-1-31-20.csv | tee Sum-Exp-2.dat
#./Sum-Exp-Data.py Sum-Exp-2.dat SuFEx-R1-BSF-T25-2-3-20.csv | tee Sum-Exp-3.dat
#./Sum-Exp-Data.py Sum-Exp-3.dat SuFEx-R1-BSF-T25-2-5-20.csv | tee Sum-Exp-4.dat
#./Sum-Exp-Data.py Sum-Exp-4.dat SuFEx-R1-BSF-T25-1-29-20.csv | tee Sum-Exp-5.dat
#./Sum-Exp-Data.py Sum-Exp-5.dat SuFEx-R1-BSF-T25-1-30-20.csv | tee Sum-Exp-All.dat

#./Sum-Exp-Data.py DCM-T25-8-14-20.csv DCM-T25-8-17-20.csv | tee Sum-Zero-1.dat
#./Sum-Exp-Data.py Sum-Zero-1.dat DCM-T25-8-22-20.csv | tee Sum-Zero-2.dat
#./Sum-Exp-Data.py Sum-Zero-2.dat DCM-T25-8-13-20.csv | tee Sum-Zero-3.dat
#./Sum-Exp-Data.py Sum-Zero-3.dat DCM-T25-8-18-20.csv | tee Sum-Zero-All.dat

#./Substract-Exp-Data.py Sum-Exp-All.dat Sum-Zero-1.dat | tee Exp-Zero.dat

gnuplot Plot-Substract-Data.gnu
