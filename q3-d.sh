#!/bin/bash
awk '{ print "Line No:<" NR "> - Count of Words:["NF"]" }' quotes.txt