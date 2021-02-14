#!/bin/bash

#./Sum-Exp-Data.py SuFEx-R1-BSF-T15-11-18-20.csv SuFEx-R1-BSF-T15-11-23-20.csv | tee Sum-BSF-T15-1.dat
#./Sum-Exp-Data.py Sum-BSF-T15-1.dat SuFEx-R1-BSF-T15-11-25-20.csv | tee Sum-BSF-T15-2.dat
#./Sum-Exp-Data.py Sum-BSF-T15-1.dat SuFEx-R1-BSF-T15-11-27-20.csv | tee Sum-BSF-T15-3.dat
#./Sum-Exp-Data.py Sum-BSF-T15-1.dat SuFEx-R1-BSF-T15-11-9-20.csv | tee BSF-T15.dat

#./Substract-Exp-Data.py BSF-T15.dat DCM-T15.dat | tee BSF-DCM-T15.dat


#./Sum-Exp-Data.py SuFEx-R1-BSF-CH3-T15-1-11-21.csv SuFEx-R1-BSF-CH3-T15-1-13-21.csv | tee Sum-BSF-CH3-T15-1.dat
#./Sum-Exp-Data.py Sum-BSF-CH3-T15-1.dat SuFEx-R1-BSF-CH3-T15-1-21-21.csv | tee Sum-BSF-CH3-T15-2.dat
#./Sum-Exp-Data.py Sum-BSF-CH3-T15-2.dat SuFEx-R1-BSF-CH3-T15-1-4-21.csv | tee Sum-BSF-CH3-T15-3.dat
#./Sum-Exp-Data.py Sum-BSF-CH3-T15-3.dat SuFEx-R1-BSF-CH3-T15-1-6-21.csv | tee Sum-BSF-CH3-T15-4.dat
#./Sum-Exp-Data.py Sum-BSF-CH3-T15-4.dat SuFEx-R1-BSF-CH3-T15-1-8-21.csv | tee BSF-CH3-T15.dat

#./Substract-Exp-Data.py BSF-CH3-T15.dat DCM-T15.dat | tee BSF-CH3-DCM-T15.dat


#./Sum-Exp-Data.py SuFEx-R1-BSF-NO2-T15-1-2-21.csv SuFEx-R1-BSF-NO2-T15-12-29-20.csv | tee Sum-BSF-NO2-T15-1.dat
#./Sum-Exp-Data.py Sum-BSF-NO2-T15-1.dat SuFEx-R1-BSF-NO2-T15-12-31-20.csv | tee Sum-BSF-NO2-T15-2.dat
#./Sum-Exp-Data.py Sum-BSF-NO2-T15-2.dat SuFEx-R1-BSF-NO2-T15-1-24-21.csv | tee Sum-BSF-NO2-T15-3.dat
#./Sum-Exp-Data.py Sum-BSF-NO2-T15-3.dat SuFEx-R1-BSF-NO2-T15-12-9-20.csv | tee BSF-NO2-T15.dat

#./Substract-Exp-Data.py BSF-NO2-T15.dat DCM-T15.dat | tee BSF-NO2-DCM-T15.dat


gnuplot Plot-Substract-Data.gnu
