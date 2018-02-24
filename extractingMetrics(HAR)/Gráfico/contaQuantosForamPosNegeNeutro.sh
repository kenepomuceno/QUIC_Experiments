#!/bin/bash

contpos=0
contneg=0
contzero=0

for x in {1..12}; do
        cd $x
        for y in `cat testinho$x`; do
                
                a=$(echo "$y > 0" | bc -l)
                b=$(echo "$y < 0" | bc -l)
                if [ $a -eq 1 ]; then ((contpos++))
                elif [ $b -eq 1 ]; then ((contneg++))
                else 
                ((contzero++)) 
                fi
         done
         cd ..
done

echo "Positivo: $contpos"
echo "Negativo: $contneg"
echo "Zero: $contzero"
                
        
