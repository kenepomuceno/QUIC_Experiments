#!/bin/bash


for x in {1..100} ;do
        
        for y in 2; do
                      
      
                for z in {1..12}; do
                                                             
                                a=$(cat /home/mq6/filtro/grafico/resultado_comquic/$x/Met$y/testinho$z)
                                b=$(cat /home/mq6/filtro/grafico/resultado_semquic/$x/Met$y/testinho$z)
                                tot=$(echo $a-$b | bc -l)    
                                
                                echo $tot >> /home/mq6/filtro/grafico/resultado/$z/testinho$z
                                tot=0
                                a=0
                                b=0
                        
                               pwd
                        
                        
                done
                                                
        done
done
