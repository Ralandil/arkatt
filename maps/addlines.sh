#!/bin/bash

toadd="                                                                                                                                                                                              "
while read line 
do
	echo "${line}$toadd"
done < $1

	
