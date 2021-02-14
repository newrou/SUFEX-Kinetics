#!/bin/bash

#./Sum-Exp-Data.py DCM-T15-10-2-20.csv DCM-T15-10-6-20.csv | tee Sum-T15-2.dat
#./Sum-Exp-Data.py Sum-T15-2.dat DCM-T15-2-15-19.csv | tee Sum-T15-3.dat
#./Sum-Exp-Data.py Sum-T15-3.dat DCM-T15-2-19-19.csv | tee Sum-T15-4.dat
#./Sum-Exp-Data.py Sum-T15-4.dat DCM-T15-9-26-20.csv | tee Sum-T15-5.dat
#./Sum-Exp-Data.py Sum-T15-5.dat DCM-T15-9-28-20.csv | tee Sum-T15-6.dat
#./Sum-Exp-Data.py Sum-T15-6.dat DCM-T15-9-30-20.csv | tee DCM-T15.dat

#./Sum-Exp-Data.py DCM-T20-2-14-19.csv DCM-T20-8-28-20.csv | tee Sum-T20-1.dat
#./Sum-Exp-Data.py Sum-T20-1.dat DCM-T20-8-31-20.csv | tee Sum-T20-2.dat
#./Sum-Exp-Data.py Sum-T20-2.dat DCM-T20-9-17-20.csv | tee Sum-T20-3.dat
#./Sum-Exp-Data.py Sum-T20-3.dat DCM-T20-9-19-20.csv | tee Sum-T20-4.dat
#./Sum-Exp-Data.py Sum-T20-4.dat DCM-T20-9-21-20.csv | tee Sum-T20-5.dat
#./Sum-Exp-Data.py Sum-T20-5.dat DCM-T20-9-23-20.csv | tee DCM-T20.dat

#./Sum-Exp-Data.py DCM-T25-8-13-20.csv DCM-T25-8-14-20.csv | tee Sum-T25-1.dat
#./Sum-Exp-Data.py Sum-T25-1.dat DCM-T25-8-17-20.csv | tee Sum-T25-2.dat
#./Sum-Exp-Data.py Sum-T25-2.dat DCM-T25-8-18-20.csv | tee Sum-T25-3.dat
#./Sum-Exp-Data.py Sum-T25-3.dat DCM-T25-8-22-20.csv | tee Sum-T25-4.dat
#./Sum-Exp-Data.py Sum-T25-4.dat DCM-T25-8-24-20.csv | tee DCM-T25.dat

#./Sum-Exp-Data.py DCM-T30-5-20.csv DCM-T30-9-11-20.csv | tee Sum-T30-1.dat
#./Sum-Exp-Data.py Sum-T30-1.dat DCM-T30-9-13-20.csv | tee Sum-T30-2.dat
#./Sum-Exp-Data.py Sum-T30-2.dat DCM-T30-9-7-20.csv | tee Sum-T30-3.dat
#./Sum-Exp-Data.py Sum-T30-3.dat DCM-T30-9-8-20.csv | tee DCM-T30.dat

gnuplot Plot-Substract-Data.gnu
