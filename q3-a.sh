#!/bin/bash
echo -n "Enter the file name:  "
read file
filesize=$(wc -c <"$file")
echo "size of file in bytes $filesize"