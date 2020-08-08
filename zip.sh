#!/bin/bash
p=$(pwd)
l=("糖糖 千岛")
for i in ${l[@]};
do
  for j in $(find $i/* -maxdepth 1  -type d | cut -d '/' -f 2);
  do
    cd $p"/"$i"/"$j;
    zip $j".zip" $(ls -1 ./);
    mv $j".zip" $p
    cd $p
  done
done

