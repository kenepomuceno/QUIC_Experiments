#!/bin/bash
IFS='
'

sudo tc qdisc del dev eth1 root #del set before

sudo tc qdisc add dev eth1 root handle 1:1 tbf rate 1000kbit buffer 2000 limit 5000
sudo tc qdisc add dev eth1 parent 1:1 handle 10:1 netem loss 0%
sudo tc qdisc add dev eth1 parent 10:1 handle 20:1 netem delay 20ms 10ms 25%

#setting parameters:
cat entrada.csv | while read line #pega as paginas
do echo $line;
	for iw in 3 10 21 32 ;  #seta initial window
	do echo $iw;
		for bw in 10000; #setabandwidth
		do
			echo $bw
			sudo tc qdisc change dev eth1 root handle 1: tbf rate ${bw}kbit buffer 2000 limit 5000	
			for pl in 0.5 1 2; #seta packet loss
			do echo $pl
				sudo tc qdisc change dev eth1 parent 1:1 handle 10:1 netem loss ${pl}%
				for rtt in 100 200; #seta rtt
				do echo $rtt 
					sudo tc qdisc change dev eth1 parent 10:1 handle 20:1 netem delay ${rtt}ms 10ms 25%
					#./scriptPLT
					phantomjs confess.js https://google.com performance > teste1112.txt
					cat teste1112.txt | grep "Elapsed load time" | awk -F ":" '{print $2}' | tr -d '[[:space:]]' >> plt.txt
				done
			done
		done
	done
done
#sudo tc qdisc ls dev eth1