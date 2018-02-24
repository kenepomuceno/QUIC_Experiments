#!/bin/bash

path="/home/mq1/Desktop/experiments/Record/" # pasta que contem as gravacoes, separadas por numeros
lista="entrada.csv" #lista de URLs , deve conter schema (http:// ou https://) antes de cada dominio
cont=0
cont2=0
delays="20 100 200" # atrasos em milisegundos
loss="0 0.005 0.01 0.02" # percentual de perda de pacotes
qtdx="1 2 3 4 5 6 7 8 9 10 11 12 13 14 15"

for qtd in $qtdx ; do
cont=0
for page in `cat $lista`; do

        ((cont++))
        cont2=0
        for rtt in $delays ; do #setartt

                for pktloss in $loss ; do #setapktloss
                    cont2=$((cont2+1))   
                    mm-webreplay ${path}${cont} $HOME/ca/caddy_conf.sh mm-delay ${rtt} mm-loss downlink ${pktloss} sh captura.sh $cont "$page" $rtt $pktloss $cont2 $qtd
                    sh /home/mq1/ca/cleanup.sh   
                done

        done

done

done


#for page in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
#	> do
#	> mkdir /home/mq2/Downloads/$page
#	> for pasta in 1 2 3 4 5 6 7 8 9 10
#		> do
#		> mkdir /home/mq2/Downloads/$page/$pasta
#	> done
#> done
