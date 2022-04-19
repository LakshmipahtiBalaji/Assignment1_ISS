#!/bin/bash
read -p "Enter the string: " s
kelvin=$s
revstr=`echo $s | rev`
echo "Reversed String :`echo $s | rev`"
arr=$revstr

echo "Reversed output with subsequent lettters"
len=${#arr[@]}
for((i=0;i<len;i++))
do
echo -n ${arr[i]} | tr a-z b-za |tr A-Z B-ZA
done
echo


strlen=${#kelvin}
let half=$strlen/2
echo "Half Reversed string is: "
for (( i=$half-1; i>=0; i-- ));
do
    echo -n ${kelvin:$i:1}
done
for (( i=$half; i<=$strlen-1; i++ ));
do
    echo -n ${kelvin:$i:1}
done
