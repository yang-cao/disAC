reset
set terminal postscript eps enhanced color 50
#******************************************************************************************************
set output 'vary_q_tpcds.eps'

set xrange [0.9:5.1]
set nomxtics

set yrange [0:250]
set y2range [0:250]

set ylabel "Size (#attr)" offset 0.9 font "Times-Roman,55"
set y2label "Time (s)" offset -0.4 font "Times-Roman,55"

set xtics ("10" 1, "15" 2, "20" 3, "25" 4, "30" 5) font "Times-Roman,55"
set ytics ("0" 0, "50" 50, "100" 100, "150" 150, "200" 200, "250" 250) font "Times-Roman,55"
set y2tics ("0" 0, "50" 50, "100" 100, "150" 150, "200" 200, "250" 250) font "Times-Roman,55"

#set logscale y

set size 1.6, 1.2
set boxwidth 0.4
set key spacing 0.9
set key at 1, 9000 top left
set nokey

plot\
"vary_q_tpcds" using ($1):($2) title '{/Times-Roman=50 a1}' with linespoints pointsize 4.5 linewidth 7  linetype 1 pointtype 1 lc rgb "black" axis x1y2,\
"vary_q_tpcds" using ($1):($3) title '{/Times-Roman=50 a2}' with linespoints pointsize 4.5 linewidth 7  linetype 1 pointtype 1 lc rgb "black" dashtype 2 axis x1y1,\
"vary_q_tpcds" using ($1):($4) title '{/Times-Roman=50 b1}' with linespoints pointsize 4.5 linewidth 7  linetype 1 pointtype 2 lc rgb "black" axis x1y2,\
"vary_q_tpcds" using ($1):($5) title '{/Times-Roman=50 b2}' with linespoints pointsize 4.5 linewidth 7  linetype 1 pointtype 2 lc rgb "black" dashtype 2 axis x1y1,\
"vary_q_tpcds" using ($1):($6) title '{/Times-Roman=50 c1}' with linespoints pointsize 4.5 linewidth 7  linetype 1 pointtype 4 lc rgb "black" axis x1y2,\
"vary_q_tpcds" using ($1):($7) title '{/Times-Roman=50 c2}' with linespoints pointsize 4.5 linewidth 7  linetype 1 pointtype 4 lc rgb "black" dashtype 2 axis x1y1