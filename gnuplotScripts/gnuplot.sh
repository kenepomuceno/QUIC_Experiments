gnuplot> set zeroaxis lt -1
gnuplot> set tics
gnuplot> set grid

plot  "$x/testinho$x" title 'Dif. Media' with line
set terminal png size 700,500 enhanced font "Helvetica,14"
set output "Grafico1.png"
replot
__________________________________________________________________________________________

print "*** Boxplot demo ***"

set style fill solid 0.25 border -1
set style boxplot outliers pointtype 7
set style data boxplot
set boxwidth  0.5
set pointsize 0.5

unset key
set border 2
set xtics ("Conf. 1" 1, "Conf. 2" 2, "Conf. 3" 3, "Conf. 4" 4, "Conf. 5" 5, "Conf. 6" 6, "Conf. 7" 7, "Conf. 8" 8, "Conf. 9" 9, "Conf. 10" 10, "Conf. 11" 11, "Conf. 12" 12) scale 0.0
set xtics nomirror
set zeroaxis lw 3 

plot '1/testinho1' using (1):1, '2/testinho2' using (2):1, '3/testinho3' using (3):1, '4/testinho4' using (4):1, '5/testinho5' using (5):1, '6/testinho6' using (6):1, '7/testinho7' using (7):1, '8/testinho8' using (8):1, '9/testinho9' using (9):1, '10/testinho10' using (10):1, '11/testinho11' using (11):1, '12/testinho12' using (12):1




