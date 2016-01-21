#! /bin/bash
read -p "input a number" a
while((a<1))  ; do
echo "input again"
read -p "input a number" a
done
for((i=1;i<=a;i++)) ;do
s=$[$s+$i]
done
echo "sum is $s"
