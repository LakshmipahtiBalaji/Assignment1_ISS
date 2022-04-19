#!/bin/bash 
declare -a arr=()
IFS=","
read -a arr
strlen=${#arr[@]}
for ((i = 0; i<$strlen; i++))
do
    for((j = 0; j<$strlen-i-1; j++))
    do
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
echo "${arr[*]}"