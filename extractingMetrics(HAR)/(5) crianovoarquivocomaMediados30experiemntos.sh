#!/bin/bash

protocolo="semquic"
for x in {1..100} ;do
        
        for y in {1..2}; do
               
        
                cd /home/mq6/filtro/teste/$x/Met$y
                for z in {1..12}; do
                        soma=0
                        for page in `cat page$((x))Met$((y))Conf$((z))_$protocolo.csv`; do
                                
                                soma=$(echo $page + $soma | bc -l)
                                
                                
                                
                        done
                        pwd
                        soma=$(echo $soma/30 | bc -l)
                        echo $soma >> /home/mq6/filtro/resultado/$x/Met$y/testinho$z
                        
                done
                                                
        done
done
