#!/bin/sh

cont=$1
url=$2
rtt=$3
pktloss=$4
cont2=$5
qtd=$6

if [ $# -lt 4 ]; then
	exit
fi

if [ ! -d hars ]; then
    mkdir hars
fi

if [ -d chrometmpcache ]; then
    rm -Rf chrometmpcache
fi

domains="$url:443"

for ip in `sudo cat /tmp/replayshell_hosts.* | sort | cut -d" " -f1 | uniq`; do
	#echo $ip;	
	for domain in `sudo grep $ip /tmp/replayshell_hosts.* | cut -d" " -f2 | sort | uniq`; do
	        domains="$domains,$domain:443"
	done
done

sudo tcpdump -i any -vvv -w $url.dump &
echo "\n AQUIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII \n"

/usr/bin/google-chrome --user-data-dir=chrometmpcache --no-first-run --enable-quic --user-agent='Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36' --origin-to-force-quic-on="$domains" &
pid=$!

ps aux | grep tcpdump | grep -v grep | awk '{print $2}' | xargs sudo kill -9

sleep 5
xdotool key ctrl+shift+i
sleep 2
       
xdotool mousemove 850 200 
sleep 1
xdotool click 1
                        
xdotool mousemove 753 284
sleep 1
xdotool click 1
sleep 1

xdotool mousemove 204 94
sleep 1
xdotool click 1
sleep 1
xdotool type "$url"
xdotool key KP_Enter
sleep 10


echo "Pid deste Chrome: $pid"

#while ( ! netstat -l | grep "localhost:9222" > /dev/null ); do 
#	echo -e "Esperando o debug do Chrome"; 
#done;

echo "Iniciando captura para $url (delay: ${rtt}ms loss: ${pktloss}%)"



#chrome-har-capturer -o hars/har50/${cont}_${rtt}_${pktloss}.har --force http://$url;

                        
xdotool mousemove 702 766 
sleep 1
xdotool click 3
                       
sleep 1
#select "Save HAR file" field
xdotool key Down
                        
xdotool key Down
sleep 1
xdotool key KP_Enter
sleep 2
#save HAR file

#echo "Cont 1: $cont" >> saida.txt
#echo "Cont 2: $cont2" >> saida.txt
#xdotool type "$cont"
sleep 2
xdotool type "$cont2"
sleep 1
     
     
xdotool mousemove 390 257 
sleep 1
xdotool click 1
sleep 1
xdotool type "$qtd"                  
sleep 1
xdotool key KP_Enter
sleep 2
     
                        
xdotool mousemove 390 257 
sleep 1
xdotool click 1
sleep 1
xdotool type "$cont"                  
sleep 1
xdotool key KP_Enter

sleep 2
xdotool key KP_Enter
sleep 1
xdotool key KP_Enter                      

sleep 2
#closing tab and reopen it
xdotool key ctrl+F4
sleep 1


echo "Captura concluida para $url (delay: ${rtt} loss: ${pktloss}%)"

kill -9 $pid;
