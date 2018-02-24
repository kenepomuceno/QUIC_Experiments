#!/bin/bash
cont=0
i=0
j=0


for cont in `seq 1 30`; do

        cd $cont

        for i in `seq 1 100`; do
        
	cd $i
	
	
	echo $i
	

	for num in 1 2 3 4 5 6 7 8 9 10 11 12 ; do
        
        
	j=$((j+1))
	
	
		 echo ""1.$j.$i.$cont.1" $(cat /home/mq6/Desktop/dados/$cont/$i/ContentLoad/ContentLoad$j)" >> /home/mq6/Desktop/dados/testeCOMQUIC_xdotool_semcache.csv
		 echo ""1.$j.$i.$cont.2" $(cat /home/mq6/Desktop/dados/$cont/$i/OnLoad/PageLoad$j)" >> /home/mq6/Desktop/dados/testeCOMQUIC_xdotool_semcache.csv
	
	#1/2: XDOTOOL(1) CHC (2) - Ferramenta utilizada
	#$j: Setup de configurações - 12 configurações diferentes. 4 rtt * 3 pcktloss
	#$i: numero da pagina. Varia de 1 a 100
	#$cont: numero do experimento. Varia de 1 a 30
	#1/2: Metrica ContentLoad(1) ou OnLoad(2) 
	
	done
	j=0
	cd ..
done
cd ..
done
