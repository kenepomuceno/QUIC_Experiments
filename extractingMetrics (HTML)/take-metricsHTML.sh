#!/bin/bash

for i in `seq 1 100`; do
	cd $i
	echo $i
	mkdir ~/Desktop/Metricas/$i/Blocked
	mkdir ~/Desktop/Metricas/$i/Dns
	mkdir ~/Desktop/Metricas/$i/Connect
	mkdir ~/Desktop/Metricas/$i/Send
	mkdir ~/Desktop/Metricas/$i/Wait
	mkdir ~/Desktop/Metricas/$i/Receive
	mkdir ~/Desktop/Metricas/$i/Ssl
	for j in `seq 1 12`; do
		xmllint --html $j.html 2>/dev/null | sed -e '/Blocked<\/td>/,/<\/tr>/!d' | sed 's/<td class="ellipsize">//' | sed 's/<\/td>//' | sed -r -n '2,4 s/([^:]+).*/\1/p' > ~/Desktop/Metricas/$i/Blocked/Blocked$j
		xmllint --html $j.html 2>/dev/null | sed -e '/Dns<\/td>/,/<\/tr>/!d' | sed 's/<td class="ellipsize">//' | sed 's/<\/td>//' | sed -r -n '2,4 s/([^:]+).*/\1/p' > ~/Desktop/Metricas/$i/Dns/Dns$j
		xmllint --html $j.html 2>/dev/null | sed -e '/Connect<\/td>/,/<\/tr>/!d' | sed 's/<td class="ellipsize">//' | sed 's/<\/td>//' | sed -r -n '2,4 s/([^:]+).*/\1/p' > ~/Desktop/Metricas/$i/Connect/Connect$j 
		xmllint --html $j.html 2>/dev/null | sed -e '/Send<\/td>/,/<\/tr>/!d' | sed 's/<td class="ellipsize">//' | sed 's/<\/td>//' | sed -r -n '2,4 s/([^:]+).*/\1/p' > ~/Desktop/Metricas/$i/Send/Send$j
		xmllint --html $j.html 2>/dev/null | sed -e '/Wait<\/td>/,/<\/tr>/!d' | sed 's/<td class="ellipsize">//' | sed 's/<\/td>//' | sed -r -n '2,4 s/([^:]+).*/\1/p' > ~/Desktop/Metricas/$i/Wait/Wait$j
		xmllint --html $j.html 2>/dev/null | sed -e '/Receive<\/td>/,/<\/tr>/!d' | sed 's/<td class="ellipsize">//' | sed 's/<\/td>//' | sed -r -n '2,4 s/([^:]+).*/\1/p' > ~/Desktop/Metricas/$i/Receive/Receive$j
		xmllint --html $j.html 2>/dev/null | sed -e '/Ssl<\/td>/,/<\/tr>/!d' | sed 's/<td class="ellipsize">//' | sed 's/<\/td>//' | sed -r -n '2,4 s/([^:]+).*/\1/p' > ~/Desktop/Metricas/$i/Ssl/Ssl$j
	done
	cd ..
done
