
d=Int-MS

echo "; v1; ; ; ; v2; ; ; ; v3; ; ; ; v4; ; ; ; v5; ; ; ;" > Calibr-NO2PhO2SOPh.csv
echo "C; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum;" >> Calibr-NO2PhO2SOPh.csv
./cat-ms-dat.py L2 $d/Calib-C12H9NO5S-L2-pos-i5-v[1-5].sum >> Calibr-NO2PhO2SOPh.csv
./cat-ms-dat.py L3 $d/Calib-C12H9NO5S-L3-pos-i5-v[1-5].sum >> Calibr-NO2PhO2SOPh.csv
./cat-ms-dat.py L4 $d/Calib-C12H9NO5S-L4-pos-i5-v[1-5].sum >> Calibr-NO2PhO2SOPh.csv
./cat-ms-dat.py L5 $d/Calib-C12H9NO5S-L5-pos-i5-v[1-5].sum >> Calibr-NO2PhO2SOPh.csv
./cat-ms-dat.py L6 $d/Calib-C12H9NO5S-L6-pos-i5-v[1-5].sum >> Calibr-NO2PhO2SOPh.csv
./cat-ms-dat.py L7 $d/Calib-C12H9NO5S-L7-pos-i5-v[1-5].sum >> Calibr-NO2PhO2SOPh.csv
./cat-ms-dat.py L8 $d/Calib-C12H9NO5S-L8-pos-i5-v[1-5].sum >> Calibr-NO2PhO2SOPh.csv
./cat-ms-dat.py L9 $d/Calib-C12H9NO5S-L9-pos-i5-v[1-5].sum >> Calibr-NO2PhO2SOPh.csv
./cat-ms-dat.py L10 $d/Calib-C12H9NO5S-L10-pos-i5-v[1-5].sum >> Calibr-NO2PhO2SOPh.csv
./cat-ms-dat.py L11 $d/Calib-C12H9NO5S-L11-pos-i5-v[1-5].sum >> Calibr-NO2PhO2SOPh.csv
./cat-ms-dat.py L12 $d/Calib-C12H9NO5S-L12-pos-i5-v[1-5].sum >> Calibr-NO2PhO2SOPh.csv

echo "; v1; ; ; ; v2; ; ; ; v3; ; ; ; v4; ; ; ; " > NO2PhO2SOPh-v1-v4.csv
echo "t; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; " >> NO2PhO2SOPh-v1-v4.csv
./cat-ms-dat.py 30 $d/NO2-RD-30s-pos-i5-v[1-4].sum >> NO2PhO2SOPh-v1-v4.csv
./cat-ms-dat.py 60 $d/NO2-RD-1m-pos-i5-v[1-4].sum >> NO2PhO2SOPh-v1-v4.csv
./cat-ms-dat.py 90 $d/NO2-RD-1_5m-pos-i5-v[1-4].sum >> NO2PhO2SOPh-v1-v4.csv
./cat-ms-dat.py 120 $d/NO2-RD-2m-pos-i5-v[1-4].sum >> NO2PhO2SOPh-v1-v4.csv
./cat-ms-dat.py 150 $d/NO2-RD-2_5m-pos-i5-v[1-4].sum >> NO2PhO2SOPh-v1-v4.csv
./cat-ms-dat.py 180 $d/NO2-RD-3m-pos-i5-v[1-4].sum >> NO2PhO2SOPh-v1-v4.csv
./cat-ms-dat.py 240 $d/NO2-RD-4m-pos-i5-v[1-4].sum >> NO2PhO2SOPh-v1-v4.csv
./cat-ms-dat.py 300 $d/NO2-RD-5m-pos-i5-v[1-4].sum >> NO2PhO2SOPh-v1-v4.csv
./cat-ms-dat.py 450 $d/NO2-RD-7_5m-pos-i5-v[1-4].sum >> NO2PhO2SOPh-v1-v4.csv
./cat-ms-dat.py 600 $d/NO2-RD-10m-pos-i5-v[1-4].sum >> NO2PhO2SOPh-v1-v4.csv
./cat-ms-dat.py 900 $d/NO2-RD-15m-pos-i5-v[1-4].sum >> NO2PhO2SOPh-v1-v4.csv

echo "; v1; ; ; ; v2; ; ; ; v3; ; ; ; v4; ; ; ; v5; ; ; ;" > NO2PhO2SOPh-v1-v5.csv
echo "t; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum;" >> NO2PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 30 $d/NO2-RK-30s-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 60 $d/NO2-RK-1m-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 120 $d/NO2-RK-2m-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 150 $d/NO2-RK-2_5m-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 180 $d/NO2-RK-3m-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 240 $d/NO2-RK-4m-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 300 $d/NO2-RK-5m-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 450 $d/NO2-RK-7_5m-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 600 $d/NO2-RK-10m-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 750 $d/NO2-RK-12_5m-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 900 $d/NO2-RK-15m-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v5.csv

#NO2PhO2SOPh-T0-10m-pos-ACN85-i5-v1.sum 
echo "; v1; ; ; ; v2; ; ; ;" > NO2PhO2SOPh-v1-v3.csv
echo "t; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum;" >> NO2PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 30 $d/NO2PhO2SOPh-T0-30s-pos-ACN85-i5-v[1-3].sum >> NO2PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 60 $d/NO2PhO2SOPh-T0-1m-pos-ACN85-i5-v[1-3].sum >> NO2PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 150 $d/NO2PhO2SOPh-T0-2_5m-pos-ACN85-i5-v[1-3].sum >> NO2PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 300 $d/NO2PhO2SOPh-T0-5m-pos-ACN85-i5-v[1-3].sum >> NO2PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 450 $d/NO2PhO2SOPh-T0-7_5m-pos-ACN85-i5-v[1-3].sum >> NO2PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 600 $d/NO2PhO2SOPh-T0-10m-pos-ACN85-i5-v[1-3].sum >> NO2PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 750 $d/NO2PhO2SOPh-T0-12_5m-pos-ACN85-i5-v[1-3].sum >> NO2PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 900 $d/NO2PhO2SOPh-T0-15m-pos-ACN85-i5-v[1-3].sum >> NO2PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 1050 $d/NO2PhO2SOPh-T0-17_5m-pos-ACN85-i5-v[1-3].sum >> NO2PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 1200 $d/NO2PhO2SOPh-T0-20m-pos-ACN85-i5-v[1-3].sum >> NO2PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 1350 $d/NO2PhO2SOPh-T0-22_5m-pos-ACN85-i5-v[1-3].sum >> NO2PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 1500 $d/NO2PhO2SOPh-T0-25m-pos-ACN85-i5-v[1-3].sum >> NO2PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 1650 $d/NO2PhO2SOPh-T0-27_5m-pos-ACN85-i5-v[1-3].sum >> NO2PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 1800 $d/NO2PhO2SOPh-T0-30m-pos-ACN85-i5-v[1-3].sum >> NO2PhO2SOPh-v1-v3.csv

echo "; v1; ; ; ; v2; ; ; ; v3; ; ; ; v4; ; ; ; v5; ; ; ;" > NO2PhO2SOPh-v1-v4-n.csv
echo "t; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; " >> NO2PhO2SOPh-v1-v4-n.csv
./cat-ms-dat.py 30 $d/NO2PhSO3Ph-30s-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v4-n.csv
./cat-ms-dat.py 60 $d/NO2PhSO3Ph-1m-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v4-n.csv
./cat-ms-dat.py 90 $d/NO2PhSO3Ph-1_5m-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v4-n.csv
./cat-ms-dat.py 120 $d/NO2PhSO3Ph-2m-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v4-n.csv
./cat-ms-dat.py 150 $d/NO2PhSO3Ph-2_5m-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v4-n.csv
./cat-ms-dat.py 180 $d/NO2PhSO3Ph-3m-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v4-n.csv
./cat-ms-dat.py 240 $d/NO2PhSO3Ph-4m-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v4-n.csv
./cat-ms-dat.py 300 $d/NO2PhSO3Ph-5m-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v4-n.csv
./cat-ms-dat.py 450 $d/NO2PhSO3Ph-7_5m-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v4-n.csv
./cat-ms-dat.py 600 $d/NO2PhSO3Ph-10m-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v4-n.csv
./cat-ms-dat.py 900 $d/NO2PhSO3Ph-15m-pos-i5-v[1-5].sum >> NO2PhO2SOPh-v1-v4-n.csv
