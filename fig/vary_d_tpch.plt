reset
set terminal postscript eps enhanced color 50
#******************************************************************************************************
set output 'vary_d_tpch.eps'

set xrange [0.9:5.1]
set nomxtics

set yrange [0:600]

set ylabel "Time (s)" offset 0.9 font "Times-Roman,55"

set xtics ("8" 1, "10" 2, "12" 3, "14" 4, "16" 5) font "Times-Roman,55"
set ytics ("0" 0, "120" 120, "240" 240, "360" 360, "480" 480, "600" 600) font "Times-Roman,55"

#set logscale y

set size 1.5, 1.2
set boxwidth 0.4
set key spacing 0.9
set key at 1, 9000 top left
set nokey

plot\
"vary_d_tpch" using ($1):($2) title '{/Times-Roman=50 a1}' with linespoints pointsize 5.5 linewidth 7.5  linetype 1 pointtype 1 lc rgb "black" axis x1y1,\
"vary_d_tpch" using ($1):($3) title '{/Times-Roman=50 a2}' with linespoints pointsize 5.5 linewidth 7.5  linetype 1 pointtype 2 lc rgb "black" axis x1y1,\
"vary_d_tpch" using ($1):($4) title '{/Times-Roman=50 b1}' with linespoints pointsize 5.5 linewidth 7.5  linetype 1 pointtype 6 lc rgb "black" axis x1y1,\
"vary_d_tpch" using ($1):($5) title '{/Times-Roman=50 b2}' with linespoints pointsize 5.5 linewidth 7.5  linetype 1 pointtype 10 lc rgb "black" axis x1y1