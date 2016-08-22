#!/bin/bash
rm maplist.list

wget http://arkadia.rpg.pl/klient/web_client/maps/ -r -l 1

ls arkadia.rpg.pl/klient/web_client/maps/*.map > maplist.list

suffix="..............................................................................................................................................................."

while read line
do
	newname=`echo $line|tr -d " "`
	iconv -f utf-8 -t US-ASCII//TRANSLIT -c "$line" |sed 's/ /./g' > $newname.ascii
	rm "$line"
done < maplist.list


ls arkadia.rpg.pl/klient/web_client/maps/*.ascii > maplist.list

while read line
do
	newname=`echo $line|sed 's/.ascii//g'`
	while read ll; do echo "${ll}${suffix}" >> $newname; done < $line
done < maplist.list

