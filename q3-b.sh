#!/bin/bash                                                                      
echo -n "Enter the file name:  "
read file
filesize=$(wc -l <"$file")
echo "Number of lines in file $filesize"

