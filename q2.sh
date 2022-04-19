#!/bin/bash
sed '/^$/d' quotes.txt > temp1.txt
awk '!a[$0]++' temp1.txt > temp.txt
awk -F'~' '{x=$2 " once said, \""$1"\""; print x}' temp.txt > speech.txt
rm temp1.txt
rm temp.txt