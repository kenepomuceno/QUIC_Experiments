#!/bin/bash
protocolo="semquic"
for x in {1..100} ;do

for page in `cat paginas_$protocolo/page$x`; do
     
               
        met="$(echo $page | awk -F "," '{print $1}' |  awk -F "." '{print $5}')"
        conf="$(echo $page | awk -F "," '{print $1}' |  awk -F "." '{print $2}')"
        if [ "$met" == "1" ]; then 
        
        if [ "$conf" == "1" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met1/page$((x))Met1Conf1_$protocolo.csv ;
        elif [ "$conf" == "2" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met1/page$((x))Met1Conf2_$protocolo.csv ;
        elif [ "$conf" == "3" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met1/page$((x))Met1Conf3_$protocolo.csv ;
        elif [ "$conf" == "4" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met1/page$((x))Met1Conf4_$protocolo.csv ;
        elif [ "$conf" == "5" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met1/page$((x))Met1Conf5_$protocolo.csv ;
        elif [ "$conf" == "6" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met1/page$((x))Met1Conf6_$protocolo.csv ;
        elif [ "$conf" == "7" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met1/page$((x))Met1Conf7_$protocolo.csv ; 
        elif [ "$conf" == "8" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met1/page$((x))Met1Conf8_$protocolo.csv ; 
        elif [ "$conf" == "9" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met1/page$((x))Met1Conf9_$protocolo.csv ; 
        elif [ "$conf" == "10" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met1/page$((x))Met1Conf10_$protocolo.csv ; 
        elif [ "$conf" == "11" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met1/page$((x))Met1Conf11_$protocolo.csv ; 
        elif [ "$conf" == "12" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met1/page$((x))Met1Conf12_$protocolo.csv ;       
        fi
        
        elif [ "$met" == "2" ]; then
       
        if [ "$conf" == "1" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met2/page$((x))Met2Conf1_$protocolo.csv ;
        elif [ "$conf" == "2" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met2/page$((x))Met2Conf2_$protocolo.csv ;
        elif [ "$conf" == "3" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met2/page$((x))Met2Conf3_$protocolo.csv ;
        elif [ "$conf" == "4" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met2/page$((x))Met2Conf4_$protocolo.csv ;
        elif [ "$conf" == "5" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met2/page$((x))Met2Conf5_$protocolo.csv ;
        elif [ "$conf" == "6" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met2/page$((x))Met2Conf6_$protocolo.csv ;
        elif [ "$conf" == "7" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met2/page$((x))Met2Conf7_$protocolo.csv ;
        elif [ "$conf" == "8" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met2/page$((x))Met2Conf8_$protocolo.csv ; 
        elif [ "$conf" == "9" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met2/page$((x))Met2Conf9_$protocolo.csv ; 
        elif [ "$conf" == "10" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met2/page$((x))Met2Conf10_$protocolo.csv ;
        elif [ "$conf" == "11" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met2/page$((x))Met2Conf11_$protocolo.csv ;
        elif [ "$conf" == "12" ]; then echo "$(echo $page | awk -F "," '{print $2}')" >> teste/$x/Met2/page$((x))Met2Conf12_$protocolo.csv ;
        fi
        
                
         fi       
         
        #if [ "$a" == "1" ]; then echo "$(echo $page | awk -F "," '{print $2}' |  awk -F "." '{print $0}')" ; fi      
        #echo $a
        #echo $page

done 
        
done
        
        

