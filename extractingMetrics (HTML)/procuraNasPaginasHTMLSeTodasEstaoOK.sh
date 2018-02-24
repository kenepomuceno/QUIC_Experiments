#!/bin/bash

rm erro.txt

for i in `seq 1 100`; do
	cd $i
	echo $i
	for page in $(ls | grep "html"); do
		exp1=$(cat $page | grep "saved from url=" | grep 0030)
		exp2=$(cat $page | grep "saved from url=" | grep 0034)
		if [[ $exp1 || $exp2 ]]; then
			cd ..
			#echo "Pasta: $i Pagina: $page" >> erro.txt
			echo "$i" >> pasta.csv
			echo "$page" >> pagina.csv
			cd $i
		fi

	done

	cd ..
done
