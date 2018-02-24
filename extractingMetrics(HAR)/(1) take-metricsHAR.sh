#!/bin/bash
cont=0
i=0

for cont in `seq 1 30`; do
mkdir ~/Desktop/dados/$cont
cd $cont

for i in `seq 1 100`; do
        
	cd $i
	echo "aqui:"
	pwd
	
	mkdir ~/Desktop/dados/$cont/$i
	mkdir ~/Desktop/dados/$cont/$i/ContentLoad
	mkdir ~/Desktop/dados/$cont/$i/OnLoad
	echo $i
	
	for j in `seq 1 12`; do
		cat $j.har | sed -e '/"onContentLoad"/!d' | sed 's/"onContentLoad": //' | sed 's/ //g' | sed 's/,//' > ~/Desktop/dados/$cont/$i/ContentLoad/ContentLoad$j
		cat $j.har | sed -e '/"onLoad"/!d' | sed 's/"onLoad": //' | sed 's/ //g' > ~/Desktop/dados/$cont/$i/OnLoad/PageLoad$j
	done
	cd ..
done
cd ..
done
