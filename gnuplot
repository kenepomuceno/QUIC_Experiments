set term wxt

 
set zeroaxis lt -1
set tics
set grid

set style fill solid 0.25 border -1
set style boxplot outliers pointtype 7
set style data boxplot
set boxwidth  0.5
set pointsize 0.5

--unset key
set border 2
set xtics nomirror
set zeroaxis lw 3
set zeroaxis lw 1


set xtics ("Conf. 1" 1.2, "Conf. 2" 2.4, "Conf. 3" 3.6, "Conf. 4" 4.8, "Conf. 5" 6, "Conf. 6" 7.2, "Conf. 7" 8.4, "Conf. 8" 9.6, "Conf. 9" 10.8, "Conf. 10" 12, "Conf. 11" 13.2, "Conf. 12" 14.4) 

plot '1/comquic_comcache1' using (1):1 with boxplot lc 'yellow', '1/semquic_comcache1' using (1.5):1 with boxplot lc 'red', '2/comquic_comcache2' using (2.2):1 with boxplot lc 'yellow', '2/semquic_comcache2' using (2.7):1 with boxplot lc 'red', '3/comquic_comcache3' using (3.4):1 with boxplot lc 'yellow', '3/semquic_comcache3' using (3.9):1 with boxplot lc 'red', '4/comquic_comcache4' using (4.6):1 with boxplot lc 'yellow', '4/semquic_comcache4' using (5.1):1 with boxplot lc 'red', '5/comquic_comcache5' using (5.8):1 with boxplot lc 'yellow', '5/semquic_comcache5' using (6.3):1 with boxplot lc 'red', '6/comquic_comcache6' using (7):1 with boxplot lc 'yellow', '6/semquic_comcache6' using (7.5):1 with boxplot lc 'red', '7/comquic_comcache7' using (8.2):1 with boxplot lc 'yellow', '7/semquic_comcache7' using (8.7):1 with boxplot lc 'red', '8/comquic_comcache8' using (9.4):1 with boxplot lc 'yellow', '8/semquic_comcache8' using (9.9):1 with boxplot lc 'red', '9/comquic_comcache9' using (10.6):1 with boxplot lc 'yellow', '9/semquic_comcache9' using (11.1):1 with boxplot lc 'red', '10/comquic_comcache10' using (11.8):1 with boxplot lc 'yellow', '10/semquic_comcache10' using (12.3):1 with boxplot lc 'red', '11/comquic_comcache11' using (13):1 with boxplot lc 'yellow', '11/semquic_comcache11' using (13.5):1 with boxplot lc 'red', '12/comquic_comcache12' using (14.2):1 with boxplot lc 'yellow', '12/semquic_comcache12' using (14.7):1 with boxplot lc 'red'


plot '1/comquic_comcache1' using (1):1 with boxes lc 'yellow', '1/semquic_comcache1' using (1.5):1 with boxes lc 'red', '2/comquic_comcache2' using (2.2):1 with boxes lc 'yellow', '2/semquic_comcache2' using (2.7):1 with boxes lc 'red', '3/comquic_comcache3' using (3.4):1 with boxes lc 'yellow', '3/semquic_comcache3' using (3.9):1 with boxes lc 'red', '4/comquic_comcache4' using (4.6):1 with boxes lc 'yellow', '4/semquic_comcache4' using (5.1):1 with boxes lc 'red', '5/comquic_comcache5' using (5.8):1 with boxes lc 'yellow', '5/semquic_comcache5' using (6.3):1 with boxes lc 'red', '6/comquic_comcache6' using (7):1 with boxes lc 'yellow', '6/semquic_comcache6' using (7.5):1 with boxes lc 'red', '7/comquic_comcache7' using (8.2):1 with boxes lc 'yellow', '7/semquic_comcache7' using (8.7):1 with boxes lc 'red', '8/comquic_comcache8' using (9.4):1 with boxes lc 'yellow', '8/semquic_comcache8' using (9.9):1 with boxes lc 'red', '9/comquic_comcache9' using (10.6):1 with boxes lc 'yellow', '9/semquic_comcache9' using (11.1):1 with boxes lc 'red', '10/comquic_comcache10' using (11.8):1 with boxes lc 'yellow', '10/semquic_comcache10' using (12.3):1 with boxes lc 'red', '11/comquic_comcache11' using (13):1 with boxes lc 'yellow', '11/semquic_comcache11' using (13.5):1 with boxes lc 'red', '12/comquic_comcache12' using (14.2):1 with boxes lc 'yellow', '12/semquic_comcache12' using (14.7):1 with boxes lc 'red'


plot '1/comquic_comcache1' using (1):1 title "QUIC" with boxplot lc 'yellow', '1/semquic_comcache1' using (1.5):1 title "TCP" with boxplot lc 'red', '2/comquic_comcache2' using (2.2):1 notitle with boxplot lc 'yellow', '2/semquic_comcache2' using (2.7):1 notitle with boxplot lc 'red', '3/comquic_comcache3' using (3.4):1 notitle with boxplot lc 'yellow', '3/semquic_comcache3' using (3.9):1 notitle with boxplot lc 'red', '4/comquic_comcache4' using (4.6):1 notitle with boxplot lc 'yellow', '4/semquic_comcache4' using (5.1):1 notitle with boxplot lc 'red', '5/comquic_comcache5' using (5.8):1 notitle with boxplot lc 'yellow', '5/semquic_comcache5' using (6.3):1 notitle with boxplot lc 'red', '6/comquic_comcache6' using (7):1 notitle with boxplot lc 'yellow', '6/semquic_comcache6' using (7.5):1 notitle with boxplot lc 'red', '7/comquic_comcache7' using (8.2):1 notitle with boxplot lc 'yellow', '7/semquic_comcache7' using (8.7):1 notitle with boxplot lc 'red', '8/comquic_comcache8' using (9.4):1 notitle with boxplot lc 'yellow', '8/semquic_comcache8' using (9.9):1 notitle with boxplot lc 'red', '9/comquic_comcache9' using (10.6):1 notitle with boxplot lc 'yellow', '9/semquic_comcache9' using (11.1):1 notitle with boxplot lc 'red', '10/comquic_comcache10' using (11.8):1 notitle with boxplot lc 'yellow', '10/semquic_comcache10' using (12.3):1 notitle with boxplot lc 'red', '11/comquic_comcache11' using (13):1 notitle with boxplot lc 'yellow', '11/semquic_comcache11' using (13.5):1 notitle with boxplot lc 'red', '12/comquic_comcache12' using (14.2):1 notitle with boxplot lc 'yellow', '12/semquic_comcache12' using (14.7):1 notitle with boxplot lc 'red'


----------------------------------------------------------------------------------------------------

set zeroaxis lt -1
set tics
set grid



plot 'testinho1' title "" with line, 'testinho2' title "" with line, 'testinho3' title "" with line, 'testinho4' title "" with line, 'testinho5' title "" with line, 'testinho6' title "" with line, 'testinho7' title "" with line, 'testinho8' title "" with line, 'testinho9' title "" with line, 'testinho10' title "" with line, 'testinho11' title "" with line, 'testinho12' title "" with line


plot 'sub1' title "" with line, 'sub2' title "" with line, 'sub3' title "" with line, 'sub4' title "" with line, 'sub5' title "" with line, 'sub6' title "" with line, 'sub7' title "" with line, 'sub8' title "" with line, 'sub9' title "" with line, 'sub10' title "" with line, 'sub11' title "" with line, 'sub12' title "" with line


----------------------------------------------------------------------------------------------------

plot '1/comquic_comcache1' using (1):1, '2/testinho2' using (2):1, '3/testinho3' using (3):1, '4/testinho4' using (4):1, '5/testinho5' using (5):1, '6/testinho6' using (6):1, '7/testinho7' using (7):1, '8/testinho8' using (8):1, '9/testinho9' using (9):1, '10/testinho10' using (10):1, '11/testinho11' using (11):1, '12/testinho12' using (12):1


plot '1/comquic_comcache1' using (1):1, '1/semquic_comcache1' using (1.5):1


--------------------------------------------------------------------------------------------


set xtics ("Conf. 1" 1, "Conf. 2" 2, "Conf. 3" 3, "Conf. 4" 4, "Conf. 5" 5, "Conf. 6" 6, "Conf. 7" 7, "Conf. 8" 8, "Conf. 9" 9, "Conf. 10" 10, "Conf. 11" 11, "Conf. 12" 12, "aaa" 13, "" 14, "" 15, "" 16, "" 17, "" 18, "" 19, "" 20, "" 21, "" 22, "" 23, "" 24) scale 0.0

plot '1/comquic_comcache1' using (1):1, '1/semquic_comcache1' using (13):1, '2/comquic_comcache2' using (2):1, '2/semquic_comcache2' using (14):1, '3/comquic_comcache3' using (3):1, '3/semquic_comcache3' using (15):1, '4/comquic_comcache4' using (4):1, '4/semquic_comcache4' using (16):1,'5/comquic_comcache5' using (5):1, '5/semquic_comcache5' using (17):1,'6/comquic_comcache6' using (6):1, '6/semquic_comcache6' using (18):1,'7/comquic_comcache7' using (7):1, '7/semquic_comcache7' using (19):1,'8/comquic_comcache8' using (8):1, '8/semquic_comcache8' using (20):1,'9/comquic_comcache9' using (9):1, '9/semquic_comcache9' using (21):1,'10/comquic_comcache10' using (10):1, '10/semquic_comcache10' using (22):1,'11/comquic_comcache11' using (11):1, '11/semquic_comcache11' using (23):1,'12/comquic_comcache12' using (12):1, '12/semquic_comcache12' using (24):1


set xtics ("Conf. 1" 1, "Conf. 2" 2, "Conf. 3" 3, "Conf. 4" 4, "Conf. 5" 5, "Conf. 6" 6, "Conf. 7" 7, "Conf. 8" 8, "Conf. 9" 9, "Conf. 10" 10, "Conf. 11" 11, "Conf. 12" 12) scale 0.0




plot 'testinho1' title "Conf. 1" with line, 'testinho2' title "Conf. 2" with line, 'testinho3' title "Conf. 3" with line, 'testinho4' title "Conf. 4" with line, 'testinho5' title "Conf. 5" with line, 'testinho6' title "Conf. 6" with line, 'testinho7' title "Conf. 7" with line, 'testinho8' title "Conf. 8" with line, 'testinho9' title "Conf. 9" with line, 'testinho10' title "Conf. 10" with line, 'testinho11' title "Conf. 11" with line, 'testinho12' title "Conf. 12" with line



XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX OTHER PAGE:


set zeroaxis lt -1
set tics
set grid

--legenda:
set key samplen 2 spacing 1 font "Times-Roman,12"


--aumentar eixo x e y:
--set xrange[1:10] 
set xtics font "Times-Roman, 14"

--mudar local da legenda:
set key right bottom  

plot 'sub1' title "Conf 1" with line lc rgb "dark-violet", 'sub2' title "Conf 2" with line lc rgb "sea-green", 'sub3' title "Conf 3" with line lc rgb "cyan", 'sub4' title "Conf 4" with line lc rgb "orange", 'sub5' title "Conf 5" with line lc rgb "blue", 'sub6' title "Conf 6" with line lc rgb "dark-orange", 'sub7' title "Conf 7" with line lc rgb "dark-red", 'sub8' title "Conf 8" with line lc rgb "goldenrod", 'sub9' title "Conf 9" with line lc rgb "red", 'sub10' title "Conf 10" with line lc rgb "pink", 'sub11' title "Conf 11" with line lc rgb "magenta", 'sub12' title "Conf 12" with line lc rgb "grey"



plot 'sub1' title "Conf 01" with line lc rgb "cyan", 'sub2' title "Conf 02" with line lc rgb "grey", 'sub3' title "Conf 03" with line lc rgb "pink", 'sub4' title "Conf 04" with line lc rgb "goldenrod", 'sub5' title "Conf 05" with line lc rgb "orange", 'sub6' title "Conf 06" with line lc rgb "dark-orange", 'sub7' title "Conf 07" with line lc rgb "red", 'sub8' title "Conf 08" with line lc rgb "magenta", 'sub9' title "Conf 09" with line lc rgb "dark-violet", 'sub10' title "Conf 10" with line lc rgb "dark-red", 'sub11' title "Conf 11" with line lc rgb "sea-green", 'sub12' title "Conf 12" with line lc rgb "blue"


plot 'sub1' title "Conf 01" with line lc rgb "cyan", 'sub2' title "Conf 02" with line lc rgb "grey", 'sub3' title "Conf 03" with line lc rgb "pink", 'sub4' title "Conf 04" with line lc rgb "goldenrod", 'sub5' title "Conf 05" with line lc rgb "orange", 'sub6' title "Conf 06" with line lc rgb "sea-green", 'sub7' title "Conf 07" with line lc rgb "blue", 'sub8' title "Conf 08" with line lc rgb "dark-violet", 'sub9' title "Conf 09" with line lc rgb "magenta", 'sub10' title "Conf 10" with line lc rgb "dark-orange", 'sub11' title "Conf 11" with line lc rgb "dark-red", 'sub12' title "Conf 12" with line lc rgb "red"


XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX OTHER PAGE:

plot '1/comquic_comcache1' using (1):1 title "QUIC" with boxplot lc 'yellow', '1/semquic_comcache1' using (1.5):1 title "TCP" with boxplot lc 'red', '2/comquic_comcache2' using (2.2):1 notitle with boxplot lc 'yellow', '2/semquic_comcache2' using (2.7):1 notitle with boxplot lc 'red', '3/comquic_comcache3' using (3.4):1 notitle with boxplot lc 'yellow', '3/semquic_comcache3' using (3.9):1 notitle with boxplot lc 'red', '4/comquic_comcache4' using (4.6):1 notitle with boxplot lc 'yellow', '4/semquic_comcache4' using (5.1):1 notitle with boxplot lc 'red', '5/comquic_comcache5' using (5.8):1 notitle with boxplot lc 'yellow', '5/semquic_comcache5' using (6.3):1 notitle with boxplot lc 'red', '6/comquic_comcache6' using (7):1 notitle with boxplot lc 'yellow', '6/semquic_comcache6' using (7.5):1 notitle with boxplot lc 'red', '7/comquic_comcache7' using (8.2):1 notitle with boxplot lc 'yellow', '7/semquic_comcache7' using (8.7):1 notitle with boxplot lc 'red', '8/comquic_comcache8' using (9.4):1 notitle with boxplot lc 'yellow', '8/semquic_comcache8' using (9.9):1 notitle with boxplot lc 'red', '9/comquic_comcache9' using (10.6):1 notitle with boxplot lc 'yellow', '9/semquic_comcache9' using (11.1):1 notitle with boxplot lc 'red', '10/comquic_comcache10' using (11.8):1 notitle with boxplot lc 'yellow', '10/semquic_comcache10' using (12.3):1 notitle with boxplot lc 'red', '11/comquic_comcache11' using (13):1 notitle with boxplot lc 'yellow', '11/semquic_comcache11' using (13.5):1 notitle with boxplot lc 'red', '12/comquic_comcache12' using (14.2):1 notitle with boxplot lc 'yellow', '12/semquic_comcache12' using (14.7):1 notitle with boxplot lc 'red'


XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX OTHER PAGE:

plot '1/comquic_semcache1' using (1):1 title "QUIC" with boxplot lc 'yellow', '1/semquic_semcache1' using (1.5):1 title "TCP" with boxplot lc 'red', '5/comquic_semcache5' using (2.2):1 notitle with boxplot lc 'yellow', '5/semquic_semcache5' using (2.7):1 notitle with boxplot lc 'red', '9/comquic_semcache9' using (3.4):1 notitle with boxplot lc 'yellow', '9/semquic_semcache9' using (3.9):1 notitle with boxplot lc 'red'


plot '1/comquic_semcache1' using (1):1 title "QUIC" with boxplot lc 'yellow', '1/semquic_semcache1' using (1.5):1 title "TCP" with boxplot lc 'red', '5/comquic_semcache5' using (2.2):1 notitle with boxplot lc 'yellow', '5/semquic_semcache5' using (2.7):1 notitle with boxplot lc 'red', '9/comquic_semcache9' using (3.4):1 notitle with boxplot lc 'yellow', '9/semquic_semcache9' using (3.9):1 notitle with boxplot lc 'red'

---------------------------------------------


set xtics ("  20ms RTT" 1.2,    " 100ms RTT" 2.4,      "200ms RTT" 3.6,       "20ms RTT" 4.8,      "100ms RTT" 6,        "200ms RTT" 7.2,          "20ms RTT" 8.4,         "100ms RTT" 9.6,         "200ms RTT" 10.8,       "20ms RTT" 12,         "100ms RTT" 13.2,          "200ms RTT" 14.4)



set xlabel ("0% loss         0% loss         0% loss            0.5% loss           0.5% loss           0.5% loss         1% loss           1% loss           1% loss           2% loss          2% loss          2% loss")



plot '1/comquic_semcache1' using (1):1 title "QUIC" with boxplot lc 'yellow', '1/semquic_semcache1' using (1.5):1 title "TCP" with boxplot lc 'red', '5/comquic_semcache5' using (2.2):1 notitle with boxplot lc 'yellow', '5/semquic_semcache5' using (2.7):1 notitle with boxplot lc 'red', '9/comquic_semcache9' using (3.4):1 notitle with boxplot lc 'yellow', '9/semquic_semcache9' using (3.9):1 notitle with boxplot lc 'red', '2/comquic_semcache2' using (4.6):1 notitle with boxplot lc 'yellow', '2/semquic_semcache2' using (5.1):1 notitle with boxplot lc 'red', '6/comquic_semcache6' using (5.8):1 notitle with boxplot lc 'yellow', '6/semquic_semcache6' using (6.3):1 notitle with boxplot lc 'red', '10/comquic_semcache10' using (7):1 notitle with boxplot lc 'yellow', '10/semquic_semcache10' using (7.5):1 notitle with boxplot lc 'red', '3/comquic_semcache3' using (8.2):1 notitle with boxplot lc 'yellow', '3/semquic_semcache3' using (8.7):1 notitle with boxplot lc 'red', '7/comquic_semcache7' using (9.4):1 notitle with boxplot lc 'yellow', '7/semquic_semcache7' using (9.9):1 notitle with boxplot lc 'red', '11/comquic_semcache11' using (10.6):1 notitle with boxplot lc 'yellow', '11/semquic_semcache11' using (11.1):1 notitle with boxplot lc 'red', '4/comquic_semcache4' using (11.8):1 notitle with boxplot lc 'yellow', '4/semquic_semcache4' using (12.3):1 notitle with boxplot lc 'red', '8/comquic_semcache8' using (13):1 notitle with boxplot lc 'yellow', '8/semquic_semcache8' using (13.5):1 notitle with boxplot lc 'red', '12/comquic_semcache12' using (14.2):1 notitle with boxplot lc 'yellow', '12/semquic_semcache12' using (14.7):1 notitle with boxplot lc 'red'




XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX OTHER PAGE:



set xtics ("  20ms RTT" 1.2,    " 100ms RTT" 2.4,      "200ms RTT" 3.6,       "20ms RTT" 4.8,      "100ms RTT" 6,        "200ms RTT" 7.2,          "20ms RTT" 8.4,         "100ms RTT" 9.6,         "200ms RTT" 10.8,       "20ms RTT" 12,         "100ms RTT" 13.2,          "200ms RTT" 14.4)




set xtics ("  20ms RTT" 1.2,    " 20ms RTT" 2.4,      "20ms RTT" 3.6,       "20ms RTT" 4.8,      "100ms RTT" 6,        "100ms RTT" 7.2,          "100ms RTT" 8.4,         "100ms RTT" 9.6,         "200ms RTT" 10.8,       "200ms RTT" 12,         "200ms RTT" 13.2,          "200ms RTT" 14.4)

set xlabel ("0% loss         0.5% loss         1% loss            2% loss           0% loss           0.5% loss         1% loss           2% loss           0% loss           0.5% loss          1% loss          2% loss")


set ylabel ("Page Load Time (ms)")


XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX OTHER PAGE:



plot '1/comquic_semcache1' using (1):1 title "QUIC" with boxplot lc 'yellow', '1/semquic_semcache1' using (1.5):1 title "TCP" with boxplot lc 'red', '5/comquic_semcache5' using (5.8):1 notitle with boxplot lc 'yellow', '5/semquic_semcache5' using (6.3):1 notitle with boxplot lc 'red','9/comquic_semcache9' using (10.6):1 notitle with boxplot lc 'yellow', '9/semquic_semcache9' using (11.1):1 notitle with boxplot lc 'red', '2/comquic_semcache2' using (2.2):1 notitle with boxplot lc 'yellow', '2/semquic_semcache2' using (2.7):1 notitle with boxplot lc 'red', '6/comquic_semcache6' using (7):1 notitle with boxplot lc 'yellow', '6/semquic_semcache6' using (7.5):1 notitle with boxplot lc 'red', '10/comquic_semcache10' using (11.8):1 notitle with boxplot lc 'yellow', '10/semquic_semcache10' using (12.3):1 notitle with boxplot lc 'red', '3/comquic_semcache3' using (3.4):1 notitle with boxplot lc 'yellow', '3/semquic_semcache3' using (3.9):1 notitle with boxplot lc 'red', '7/comquic_semcache7' using (8.2):1 notitle with boxplot lc 'yellow', '7/semquic_semcache7' using (8.7):1 notitle with boxplot lc 'red', '11/comquic_semcache11' using (13):1 notitle with boxplot lc 'yellow', '11/semquic_semcache11' using (13.5):1 notitle with boxplot lc 'red', '4/comquic_semcache4' using (4.6):1 notitle with boxplot lc 'yellow', '4/semquic_semcache4' using (5.1):1 notitle with boxplot lc 'red', '8/comquic_semcache8' using (9.4):1 notitle with boxplot lc 'yellow', '8/semquic_semcache8' using (9.9):1 notitle with boxplot lc 'red', '12/comquic_semcache12' using (14.2):1 notitle with boxplot lc 'yellow', '12/semquic_semcache12' using (14.7):1 notitle with boxplot lc 'red'



plot '1/comquic_semcache1' using (1):1 title "QUIC" with boxplot lc 'yellow', '1/semquic_semcache1' using (1.5):1 title "TCP" with boxplot lc 'red', '5/comquic_semcache5' using (2.2):1 notitle with boxplot lc 'yellow', '5/semquic_semcache5' using (2.7):1 notitle with boxplot lc 'red', '9/comquic_semcache9' using (3.4):1 notitle with boxplot lc 'yellow', '9/semquic_semcache9' using (3.9):1 notitle with boxplot lc 'red', '2/comquic_semcache2' using (4.6):1 notitle with boxplot lc 'yellow', '2/semquic_semcache2' using (5.1):1 notitle with boxplot lc 'red', '6/comquic_semcache6' using (5.8):1 notitle with boxplot lc 'yellow', '6/semquic_semcache6' using (6.3):1 notitle with boxplot lc 'red', '10/comquic_semcache10' using (7):1 notitle with boxplot lc 'yellow', '10/semquic_semcache10' using (7.5):1 notitle with boxplot lc 'red', '3/comquic_semcache3' using (8.2):1 notitle with boxplot lc 'yellow', '3/semquic_semcache3' using (8.7):1 notitle with boxplot lc 'red', '7/comquic_semcache7' using (9.4):1 notitle with boxplot lc 'yellow', '7/semquic_semcache7' using (9.9):1 notitle with boxplot lc 'red', '11/comquic_semcache11' using (10.6):1 notitle with boxplot lc 'yellow', '11/semquic_semcache11' using (11.1):1 notitle with boxplot lc 'red', '4/comquic_semcache4' using (11.8):1 notitle with boxplot lc 'yellow', '4/semquic_semcache4' using (12.3):1 notitle with boxplot lc 'red', '8/comquic_semcache8' using (13):1 notitle with boxplot lc 'yellow', '8/semquic_semcache8' using (13.5):1 notitle with boxplot lc 'red', '12/comquic_semcache12' using (14.2):1 notitle with boxplot lc 'yellow', '12/semquic_semcache12' using (14.7):1 notitle with boxplot lc 'red'