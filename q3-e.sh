#!/bin/bash
read -p "Enter the file Name: " file
grep -wo  '[[:alnum:]]\+' $file > temp.txt
cat -n temp.txt | sort -k2 | uniq -cdf1 | sort -nk2  > temp2.txt
while read line
do
echo "$(echo $line | awk '{print "Word: " $3 " - Count of repitition: " $1}')"
done < temp2.txt
rm temp.txt
rm temp2.txt