#!/bin/bash

list=`ls *.dat`
for i in $list
do
    name=`basename $i .dat`
    echo $name
    ln -s ../../../Export/$name.csv $name.csv
done
