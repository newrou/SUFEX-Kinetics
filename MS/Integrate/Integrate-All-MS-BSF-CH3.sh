#!/bin/bash

mkdir -p Int-MS

for i in `find ./ -name "*.mzdata"`
do
  name=`basename $i .mzdata`
  FileConverter -in $name.mzdata -out tmp-ms.mzML
  FileFilter -in tmp-ms.mzML -out $name-MH.mzML -int 100: -rt 30:1030 -mz 249.04:249.08
  FileConverter -in $name-MH.mzML -out Int-MS/$name-MH.dta2d
  FileFilter -in tmp-ms.mzML -out $name-MNa.mzML -int 100: -rt 30:1030 -mz 271.02:271.06
  FileConverter -in $name-MNa.mzML -out Int-MS/$name-MNa.dta2d
  FileFilter -in tmp-ms.mzML -out $name-MK.mzML -int 100: -rt 30:1030 -mz 286.99:287.03
  FileConverter -in $name-MK.mzML -out Int-MS/$name-MK.dta2d
  ./Sum-Exp-MS-dta2d.py Int-MS/$name-MH.dta2d Int-MS/$name-MNa.dta2d Int-MS/$name-MK.dta2d | tee Int-MS/$name.sum
  rm tmp-ms.mzML $name-*.mzML
done


