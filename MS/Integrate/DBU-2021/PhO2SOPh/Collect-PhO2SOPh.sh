
d=Int-MS
s=s

echo "; v1; ; ; ; v2; ; ; ; v3; ; ; ; v4; ; ; ; " > PhO2SOPh-2021-v1-4.csv
echo "t; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; M+H; M+Na; M+K; Sum; " >> PhO2SOPh-2021-v1-4.csv
#./cat-ms-dat.py 30 $d/NO2PhO2SOPh-T0-30s-pos-ACN85-i5-v[1-3].sum >> NO2PhO2SOPh-v1-v3.csv

cd $d
for f in *v1.sum 
do
    tm=`echo $f| sed s/PhO2SOPh-// | sed s/s-pos-ACN85-i5-2021-v1.sum// `
    echo $tm
    ../cat-ms-dat.py $tm PhO2SOPh-$tm$s-pos-ACN85-i5-2021-v[1-4].sum >> ../PhO2SOPh-2021-v1-4.csv
done
cd ..
