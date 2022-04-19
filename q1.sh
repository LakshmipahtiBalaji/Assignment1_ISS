#!/bin/bash
sed '/^$/d' quotes.txt > quotes1b.txt
awk '!a[$0]++' quotes1b.txt > quotes2b.txt