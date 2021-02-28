
d=Int-MS

echo "; v1; ; ; ; v2; ; ; ; v3; ; ; ; v4; ; ; ; v5; ; ; ;" > Calibr-MePhO2SOPh.csv
echo "C; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum;" >> Calibr-MePhO2SOPh.csv
./cat-ms-dat.py L2 $d/Calib-C13H12SO3-L2-pos-i5-v[1-5].sum >> Calibr-MePhO2SOPh.csv
./cat-ms-dat.py L3 $d/Calib-C13H12SO3-L3-pos-i5-v[1-5].sum >> Calibr-MePhO2SOPh.csv
./cat-ms-dat.py L4 $d/Calib-C13H12SO3-L4-pos-i5-v[1-5].sum >> Calibr-MePhO2SOPh.csv
./cat-ms-dat.py L5 $d/Calib-C13H12SO3-L5-pos-i5-v[1-5].sum >> Calibr-MePhO2SOPh.csv
./cat-ms-dat.py L6 $d/Calib-C13H12SO3-L6-pos-i5-v[1-5].sum >> Calibr-MePhO2SOPh.csv
./cat-ms-dat.py L7 $d/Calib-C13H12SO3-L7-pos-i5-v[1-5].sum >> Calibr-MePhO2SOPh.csv
./cat-ms-dat.py L8 $d/Calib-C13H12SO3-L8-pos-i5-v[1-5].sum >> Calibr-MePhO2SOPh.csv
./cat-ms-dat.py L9 $d/Calib-C13H12SO3-L9-pos-i5-v[1-5].sum >> Calibr-MePhO2SOPh.csv
./cat-ms-dat.py L10 $d/Calib-C13H12SO3-L10-pos-i5-v[1-5].sum >> Calibr-MePhO2SOPh.csv
./cat-ms-dat.py L11 $d/Calib-C13H12SO3-L11-pos-i5-v[1-5].sum >> Calibr-MePhO2SOPh.csv
./cat-ms-dat.py L12 $d/Calib-C13H12SO3-L12-pos-i5-v[1-5].sum >> Calibr-MePhO2SOPh.csv

echo "; v1; ; ; ; v2; ; ; ; v3; ; ; ; v4; ; ; ; v5; ; ; ;" > MePhO2SOPh-v1-v5.csv
echo "t; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum;" >> MePhO2SOPh-v1-v5.csv
./cat-ms-dat.py 0 $d/Me-RD-m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5.csv
./cat-ms-dat.py 30 $d/Me-RD-30s-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5.csv
./cat-ms-dat.py 60 $d/Me-RD-1m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5.csv
./cat-ms-dat.py 90 $d/Me-RD-1_5m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5.csv
./cat-ms-dat.py 120 $d/Me-RD-2m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5.csv
./cat-ms-dat.py 150 $d/Me-RD-2_5m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5.csv
./cat-ms-dat.py 180 $d/Me-RD-3m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5.csv
./cat-ms-dat.py 240 $d/Me-RD-4m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5.csv
./cat-ms-dat.py 300 $d/Me-RD-5m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5.csv
./cat-ms-dat.py 360 $d/Me-RD-6m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5.csv
./cat-ms-dat.py 450 $d/Me-RD-7_5m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5.csv
./cat-ms-dat.py 540 $d/Me-RD-9m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5.csv
./cat-ms-dat.py 600 $d/Me-RD-10m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5.csv
./cat-ms-dat.py 750 $d/Me-RD-12_5m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5.csv
./cat-ms-dat.py 1050 $d/Me-RD-17_5m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5.csv

#MePhO2SOPh-T0-10m-pos-ACN85-i5-v1.sum 
echo "; v1; ; ; ; v2; ; ; ;" > MePhO2SOPh-v1-v2.csv
echo "t; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum;" >> MePhO2SOPh-v1-v2.csv
./cat-ms-dat.py 30 $d/MePhO2SOPh-T0-30s-pos-ACN85-i5-v[1-2].sum >> MePhO2SOPh-v1-v2.csv
./cat-ms-dat.py 60 $d/MePhO2SOPh-T0-1m-pos-ACN85-i5-v[1-2].sum >> MePhO2SOPh-v1-v2.csv
./cat-ms-dat.py 150 $d/MePhO2SOPh-T0-2_5m-pos-ACN85-i5-v[1-2].sum >> MePhO2SOPh-v1-v2.csv
./cat-ms-dat.py 300 $d/MePhO2SOPh-T0-5m-pos-ACN85-i5-v[1-2].sum >> MePhO2SOPh-v1-v2.csv
./cat-ms-dat.py 450 $d/MePhO2SOPh-T0-7_5m-pos-ACN85-i5-v[1-2].sum >> MePhO2SOPh-v1-v2.csv
./cat-ms-dat.py 600 $d/MePhO2SOPh-T0-10m-pos-ACN85-i5-v[1-2].sum >> MePhO2SOPh-v1-v2.csv
./cat-ms-dat.py 750 $d/MePhO2SOPh-T0-12_5m-pos-ACN85-i5-v[1-2].sum >> MePhO2SOPh-v1-v2.csv
./cat-ms-dat.py 900 $d/MePhO2SOPh-T0-15m-pos-ACN85-i5-v[1-2].sum >> MePhO2SOPh-v1-v2.csv
./cat-ms-dat.py 1050 $d/MePhO2SOPh-T0-17_5m-pos-ACN85-i5-v[1-2].sum >> MePhO2SOPh-v1-v2.csv
./cat-ms-dat.py 1200 $d/MePhO2SOPh-T0-20m-pos-ACN85-i5-v[1-2].sum >> MePhO2SOPh-v1-v2.csv
./cat-ms-dat.py 1350 $d/MePhO2SOPh-T0-22_5m-pos-ACN85-i5-v[1-2].sum >> MePhO2SOPh-v1-v2.csv
./cat-ms-dat.py 1500 $d/MePhO2SOPh-T0-25m-pos-ACN85-i5-v[1-2].sum >> MePhO2SOPh-v1-v2.csv
./cat-ms-dat.py 1650 $d/MePhO2SOPh-T0-27_5m-pos-ACN85-i5-v[1-2].sum >> MePhO2SOPh-v1-v2.csv
./cat-ms-dat.py 1800 $d/MePhO2SOPh-T0-30m-pos-ACN85-i5-v[1-2].sum >> MePhO2SOPh-v1-v2.csv

echo "; v1; ; ; ; v2; ; ; ; v3; ; ; ; v4; ; ; ; v5; ; ; ;" > MePhO2SOPh-v1-v5-n.csv
echo "t; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum;" >> MePhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 0 $d/MePhSO3Ph-m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 30 $d/MePhSO3Ph-30s-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 60 $d/MePhSO3Ph-1m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 90 $d/MePhSO3Ph-1_5m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 120 $d/MePhSO3Ph-2m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 150 $d/MePhSO3Ph-2_5m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 180 $d/MePhSO3Ph-3m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 240 $d/MePhSO3Ph-4m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 300 $d/MePhSO3Ph-5m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 360 $d/MePhSO3Ph-6m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 450 $d/MePhSO3Ph-7_5m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 540 $d/MePhSO3Ph-9m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 600 $d/MePhSO3Ph-10m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 750 $d/MePhSO3Ph-12_5m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 1050 $d/MePhSO3Ph-17_5m-pos-i5-v[1-5].sum >> MePhO2SOPh-v1-v5-n.csv
