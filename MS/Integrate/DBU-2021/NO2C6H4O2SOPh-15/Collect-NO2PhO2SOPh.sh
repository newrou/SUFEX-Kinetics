
d=Int-MS


echo "; v1; ; ; ; " > NO2C6H4O2SOPh-2021-15-v1.csv
echo "t; M+H; M+Na; M+K; Sum; " >> NO2C6H4O2SOPh-2021-15-v1.csv
#./cat-ms-dat.py 30 $d/NO2PhO2SOPh-T0-30s-pos-ACN85-i5-v[1-3].sum >> NO2PhO2SOPh-v1-v3.csv

cd $d
for f in *.sum 
do
    tm=`echo $f| sed s/NO2PhO2SOPh-// | sed s/s-pos-ACN85-i5-2021-15-v1.sum// `
    echo $tm $f
    ../cat-ms-dat.py $tm $f >> ../NO2C6H4O2SOPh-2021-15-v1.csv
done
cd ..
