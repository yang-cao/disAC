reset
set terminal postscript eps enhanced color 50
#******************************************************************************************************
set output 'vary_j_tpcds.eps'

set xrange [0.9:5.1]
set nomxtics

set yrange [0:300]

set ylabel "Time (s)" offset 0.9 font "Times-Roman,55"

set xtics ("1" 1, "2" 2, "3" 3, "4" 4, "5" 5) font "Times-Roman,55"
set ytics ("0" 0, "60" 60, "120" 120, "180" 180, "240" 240, "300" 300) font "Times-Roman,55"

#set logscale y

set size 1.5, 1.2
set boxwidth 0.4
set key spacing 0.9
set key at 1, 9000 top left
set nokey

plot\
"vary_j_tpcds" using ($1):($2) title '{/Times-Roman=50 a1}' with linespoints pointsize 5.5 linewidth 7.5  linetype 1 pointtype 1 lc rgb "black" axis x1y1,\
"vary_j_tpcds" using ($1):($3) title '{/Times-Roman=50 a2}' with linespoints pointsize 5.5 linewidth 7.5  linetype 1 pointtype 2 lc rgb "black" axis x1y1,\
"vary_j_tpcds" using ($1):($4) title '{/Times-Roman=50 b1}' with linespoints pointsize 5.5 linewidth 7.5  linetype 1 pointtype 6 lc rgb "black" axis x1y1,\
"vary_j_tpcds" using ($1):($5) title '{/Times-Roman=50 b2}' with linespoints pointsize 5.5 linewidth 7.5  linetype 1 pointtype 10 lc rgb "black" axis x1y1