
d=Int-MS
s=s

echo "; v1; ; ; ; ; v2; ; ; ; " > NO2C6H4O2SOPh-2021-10-v1-2.csv
echo "t; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; " >> NO2C6H4O2SOPh-2021-10-v1-2.csv
#./cat-ms-dat.py 30 $d/NO2PhO2SOPh-T0-30s-pos-ACN85-i5-v[1-3].sum >> NO2PhO2SOPh-v1-v3.csv

cd $d
for f in *v1.sum 
do
    tm=`echo $f| sed s/NO2PhO2SOPh-// | sed s/s-pos-ACN85-i5-2021-10-v1.sum// `
    echo $tm $f
    ../cat-ms-dat.py $tm NO2PhO2SOPh-$tm$s-pos-ACN85-i5-2021-10-v[1-2].sum >> ../NO2C6H4O2SOPh-2021-10-v1-2.csv
done
cd ..
