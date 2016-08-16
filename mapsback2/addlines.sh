#!/bin/bash
ls *.map > maplist

toadd="                                                                                                                                                                                              ."
while read line 
do
	while read mapline 
	do
		echo "${mapline}$toadd" >> $line.new
	done < $line
done < maplist


