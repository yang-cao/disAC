reset
set terminal postscript eps enhanced color 50
#******************************************************************************************************
set output 'legends.eps'

set xrange [0.6:5.5]
set nomxtics

set yrange [0:600]

set ylabel "Average time (s)" offset 2 font "Times-Roman,45"

set xtics ("1" 1, "2" 2, "4" 3, "8" 4, "16" 5) font "Times-Roman,35"
set ytics ("0" 0, "200" 200, "400" 400, "600" 600) font "Times-Roman,35"


set size 6, 1.3
set boxwidth 0.4
set key spacing 1.8
set key font ", 40"
set key at 0.85, 580 top left
set key vertical maxrows 2
set key width  3.5
set key samplen 5.3


plot\
"legend" using ($1):($1) title '{/Times-Roman=50 QCSS_{size}}' with linespoints pointsize 4.5 linewidth 5  linetype 1 pointtype 2 lc rgb "black" dashtype 2,\
"legend" using ($1):($1) title '{/Times-Roman=50 QCSS_{time}}' with linespoints pointsize 4.5 linewidth 5  linetype 1 pointtype 2 lc rgb "black",\
"legend" using ($1):($1) title '{/Times-Roman=50 USCS_{size}}' with linespoints pointsize 4.5 linewidth 5  linetype 1 pointtype 1 lc rgb "black" dashtype 2,\
"legend" using ($1):($1) title '{/Times-Roman=50 USCS_{time}}' with linespoints pointsize 4.5 linewidth 5  linetype 1 pointtype 1 lc rgb "black",\
"legend" using ($1):($1) title '{/Times-Roman=50 OPTS_{size}}' with linespoints pointsize 4.5 linewidth 5  linetype 1 pointtype 4 lc rgb "black" dashtype 2,\
"legend" using ($1):($1) title '{/Times-Roman=50 OPTS_{time}}' with linespoints pointsize 4.5 linewidth 5  linetype 1 pointtype 4 lc rgb "black",\
"legend" using ($1):($1) title '{/Times-Roman=50 OPTS with f^{(a)}}' with linespoints pointsize 4.5 linewidth 5  linetype 1 pointtype 6 lc rgb "black",\
"legend" using ($1):($1) title '{/Times-Roman=50 OPTS with f^{(b)}}' with linespoints pointsize 4.5 linewidth 5  linetype 1 pointtype 10 lc rgb "black"
