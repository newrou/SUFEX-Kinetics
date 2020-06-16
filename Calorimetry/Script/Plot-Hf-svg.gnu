#set terminal postscript eps
set terminal postscript eps color
set key inside right top vertical Right noreverse enhanced autotitles box linetype -1 linewidth 0.200
#set title "TD spectr" 
set ylabel "Heat flow (P), mW/g" font "Helvetica-Bold,26"
set xlabel "Time, h" font "Helvetica-Bold,26"
set bars small
#set xrange [0:50]
#set yrange [-100:0]
#set size 0.5,0.5
#set terminal postscript enhanced "Courier" 20

set terminal svg size 1200,900 font "Helvetica,26"
set key autotitle columnhead
set datafile separator ","

set termoption dash

set linestyle 1 lt 1 lw 2 lc rgb "red" dashtype 1
set linestyle 2 lt 2 lw 2 lc rgb "blue" dashtype 1
set linestyle 3 lt 3 lw 2 lc rgb "green" dashtype 1
set linestyle 4 lt 4 lw 2 lc -1 dashtype 1
set linestyle 5 lt 5 lw 2 lc -1 dashtype 1
set linestyle 6 lt 6 lw 2 lc -1 dashtype 1
set linestyle 7 lt 7 lw 2 lc -1 dashtype 1
set linestyle 8 lt 8 lw 2 lc -1 dashtype 1


set output "r.svg"
#set xrange [0:60]
set style line 1 lt 1 lw 2 pt 6 linecolor rgb "black"
set style line 2 lt 2 lw 2 pt 7 linecolor rgb "black"
#set key samplen -1 spacing 1.3 font ",26" box lw 0
set nokey
plot "r.dat" using (($1)/3600):(1000*($2)) with lines linestyle 2

quit
