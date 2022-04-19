#!/bin/bash                                                                      
echo -n "Enter the file name:  "
read file
filesize=$(wc -w <"$file")
echo "Number of words in file= $filesize"