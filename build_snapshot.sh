#!/bin/bash

getdate=`date +%y%m%d%H%M%S`
newname="arkatt-"$getdate".zip"
echo $newname
zip $newname *.tin
zip $newname data/*.tin
zip $newname *.map
zip $newname *.txt
zip $newname maps/*

