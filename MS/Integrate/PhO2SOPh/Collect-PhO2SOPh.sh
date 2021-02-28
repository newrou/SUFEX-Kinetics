
d=Int-MS

echo "; v1; ; ; ; v2; ; ; ; v3; ; ; ; v4; ; ; ; v5; ; ; ;" > Calibr-PhO2SOPh.csv
echo "C; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum;" >> Calibr-PhO2SOPh.csv
./cat-ms-dat.py L4 $d/Calib-C12H10SO3-L4-pos-i5-v[1-5].sum >> Calibr-PhO2SOPh.csv
./cat-ms-dat.py L5 $d/Calib-C12H10SO3-L5-pos-i5-v[1-5].sum >> Calibr-PhO2SOPh.csv
./cat-ms-dat.py L6 $d/Calib-C12H10SO3-L6-pos-i5-v[1-5].sum >> Calibr-PhO2SOPh.csv
./cat-ms-dat.py L7 $d/Calib-C12H10SO3-L7-pos-i5-v[1-5].sum >> Calibr-PhO2SOPh.csv
./cat-ms-dat.py L8 $d/Calib-C12H10SO3-L8-pos-i5-v[1-5].sum >> Calibr-PhO2SOPh.csv
./cat-ms-dat.py L9 $d/Calib-C12H10SO3-L9-pos-i5-v[1-5].sum >> Calibr-PhO2SOPh.csv
./cat-ms-dat.py L10 $d/Calib-C12H10SO3-L10-pos-i5-v[1-5].sum >> Calibr-PhO2SOPh.csv
./cat-ms-dat.py L11 $d/Calib-C12H10SO3-L11-pos-i5-v[1-5].sum >> Calibr-PhO2SOPh.csv
./cat-ms-dat.py L12 $d/Calib-C12H10SO3-L12-pos-i5-v[1-5].sum >> Calibr-PhO2SOPh.csv

echo "; v1; ; ; ; v2; ; ; ; v3; ; ; ; v4; ; ; ; v5; ; ; ; " > PhO2SOPh-v1-v5-RD.csv
echo "t; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; " >> PhO2SOPh-v1-v5-RD.csv
./cat-ms-dat.py 30 $d/RD-30s-pos-i5.sum $d/RD-30s-pos-i5-v[1-4].sum >> PhO2SOPh-v1-v5-RD.csv
./cat-ms-dat.py 60 $d/RD-1m-pos-i5.sum $d/RD-1m-pos-i5-v[1-4].sum >> PhO2SOPh-v1-v5-RD.csv
./cat-ms-dat.py 150 $d/RD-2_5m-pos-i5.sum $d/RD-2_5m-pos-i5-v[1-4].sum >> PhO2SOPh-v1-v5-RD.csv
./cat-ms-dat.py 300 $d/RD-5m-pos-i5.sum $d/RD-5m-pos-i5-v[1-4].sum >> PhO2SOPh-v1-v5-RD.csv
./cat-ms-dat.py 450 $d/RD-7_5m-pos-i5.sum $d/RD-7_5m-pos-i5-v[1-4].sum >> PhO2SOPh-v1-v5-RD.csv
./cat-ms-dat.py 600 $d/RD-10m-pos-i5.sum $d/RD-10m-pos-i5-v[1-4].sum >> PhO2SOPh-v1-v5-RD.csv
./cat-ms-dat.py 750 $d/RD-12_5m-pos-i5.sum $d/RD-12_5m-pos-i5-v[1-4].sum >> PhO2SOPh-v1-v5-RD.csv

echo "; v1; ; ; ; v2; ; ; ; v3; ; ; ; v4; ; ; ; v5; ; ; ;" > PhO2SOPh-v1-v5.csv
echo "t; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum;" >> PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 30 $d/RK-30s-pos-i5-v[1-5].sum >> PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 60 $d/RK-1m-pos-i5-v[1-5].sum >> PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 120 $d/RK-2m-pos-i5-v[1-5].sum >> PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 180 $d/RK-3m-pos-i5-v[1-5].sum >> PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 240 $d/RK-4m-pos-i5-v[1-5].sum >> PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 360 $d/RK-6m-pos-i5-v[1-5].sum >> PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 420 $d/RK-7m-pos-i5-v[1-5].sum >> PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 480 $d/RK-8m-pos-i5-v[1-5].sum >> PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 540 $d/RK-9m-pos-i5-v[1-5].sum >> PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 600 $d/RK-10m-pos-i5-v[1-5].sum >> PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 750 $d/RK-12_5m-pos-i5-v[1-5].sum >> PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 900 $d/RK-15m-pos-i5-v[1-5].sum >> PhO2SOPh-v1-v5.csv
./cat-ms-dat.py 1050 $d/RK-17_5m-pos-i5-v[1-5].sum >> PhO2SOPh-v1-v5.csv

#PhO2SOPh-T0-10m-pos-ACN85-i5-v1.sum 
echo "; v1; ; ; ; v2; ; ; ; v3; ; ; ;" > PhO2SOPh-v1-v3.csv
echo "t; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; " >> PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 30 $d/PhOSO2Ph-T0-30s-pos-ACN85-i5-v[1-3].sum >> PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 60 $d/PhOSO2Ph-T0-1m-pos-ACN85-i5-v[1-3].sum >> PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 150 $d/PhOSO2Ph-T0-2_5m-pos-ACN85-i5-v[1-3].sum >> PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 300 $d/PhOSO2Ph-T0-5m-pos-ACN85-i5-v[1-3].sum >> PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 450 $d/PhOSO2Ph-T0-7_5m-pos-ACN85-i5-v[1-3].sum >> PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 600 $d/PhOSO2Ph-T0-10m-pos-ACN85-i5-v[1-3].sum >> PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 750 $d/PhOSO2Ph-T0-12_5m-pos-ACN85-i5-v[1-3].sum >> PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 900 $d/PhOSO2Ph-T0-15m-pos-ACN85-i5-v[1-3].sum >> PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 1050 $d/PhOSO2Ph-T0-17_5m-pos-ACN85-i5-v[1-3].sum >> PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 1200 $d/PhOSO2Ph-T0-20m-pos-ACN85-i5-v[1-3].sum >> PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 1350 $d/PhOSO2Ph-T0-22_5m-pos-ACN85-i5-v[1-3].sum >> PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 1500 $d/PhOSO2Ph-T0-25m-pos-ACN85-i5-v[1-3].sum >> PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 1650 $d/PhOSO2Ph-T0-27_5m-pos-ACN85-i5-v[1-3].sum >> PhO2SOPh-v1-v3.csv
./cat-ms-dat.py 1800 $d/PhOSO2Ph-T0-30m-pos-ACN85-i5-v[1-3].sum >> PhO2SOPh-v1-v3.csv

echo "; v1; ; ; ; v2; ; ; ; v3; ; ; ; v4; ; ; ; v5; ; ; ;" > PhO2SOPh-v1-v5-n.csv
echo "t; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; " >> PhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 30 $d/PhSO3Ph-30s-pos-i5.sum $d/PhSO3Ph-30s-pos-i5-v[2-5].sum >> PhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 60 $d/PhSO3Ph-1m-pos-i5.sum $d/PhSO3Ph-1m-pos-i5-v[2-5].sum >> PhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 150 $d/PhSO3Ph-2_5m-pos-i5.sum $d/PhSO3Ph-2_5m-pos-i5-v[2-5].sum >> PhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 300 $d/PhSO3Ph-5m-pos-i5.sum $d/PhSO3Ph-5m-pos-i5-v[2-5].sum >> PhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 450 $d/PhSO3Ph-7_5m-pos-i5.sum $d/PhSO3Ph-7_5m-pos-i5-v[2-5].sum >> PhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 600 $d/PhSO3Ph-10m-pos-i5.sum $d/PhSO3Ph-10m-pos-i5-v[2-5].sum >> PhO2SOPh-v1-v5-n.csv
./cat-ms-dat.py 750 $d/PhSO3Ph-12_5m-pos-i5.sum $d/PhSO3Ph-12_5m-pos-i5-v[2-5].sum >> PhO2SOPh-v1-v5-n.csv
