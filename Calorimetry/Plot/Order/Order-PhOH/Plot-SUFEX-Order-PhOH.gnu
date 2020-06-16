#set terminal postscript eps
set terminal postscript eps color
set key inside right top vertical Right noreverse enhanced autotitles box linetype -1 linewidth 0.200
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

#set linestyle 1 lt 1 lw 2 lc rgb "red" dashtype 1
#set linestyle 2 lt 2 lw 2 lc rgb "blue" dashtype 1
#set linestyle 3 lt 3 lw 2 lc rgb "green" dashtype 1
set linestyle 1 lt 1 lw 2
set linestyle 2 lt 2 lw 2
set linestyle 3 lt 3 lw 2
set linestyle 4 lt 4 lw 2
set linestyle 5 lt 5 lw 2
set linestyle 6 lt 6 lw 2
set linestyle 7 lt 7 lw 2


set output "SUFEX-Order-PhOH.svg"
set title "SUFEX Order PhOH"
set xrange [0:30]
#set key samplen -1 spacing 1.3 font ",26" box lw 0
#set nokey
plot \
     "SuFEx-R1-BSF-0_5xPhOH-3-16-20.dat" using (($1)/3600):(1000*($2)) with lines linestyle 1 ti "0.5 PhOH", \
     "SuFEx-R1-BSF-0_5xPhOH-3-18-20.dat" using (($1)/3600):(1000*($2)) with lines linestyle 1 ti "0.5 PhOH", \
     "SuFEx-R1-BSF-0_5xPhOH-3-20-20.dat" using (($1)/3600):(1000*($2)) with lines linestyle 1 ti "0.5 PhOH", \
     "SuFEx-R1-BSF-T25-1-29-20.dat" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "1.0 PhOH", \
     "SuFEx-R1-BSF-T25-1-30-20.dat" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "1.0 PhOH", \
     "SuFEx-R1-BSF-T25-1-31-20.dat" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "1.0 PhOH", \
     "SuFEx-R1-BSF-T25-2-3-20.dat" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "1.0 PhOH", \
     "SuFEx-R1-BSF-T25-2-5-20.dat" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "1.0 PhOH", \
     "SuFEx-R1-BSF-T25-2-7-20.dat" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "1.0 PhOH", \
     "SuFEx-R1-BSF-2xPhOH-2-27-20.dat" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "2.0 PhOH", \
     "SuFEx-R1-BSF-2xPhOH-2-29-20.dat" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "2.0 PhOH", \
     "SuFEx-R1-BSF-2xPhOH-3-10-20.dat" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "2.0 PhOH", \
     "SuFEx-R1-BSF-3xPhOH-3-12-20.dat" using (($1)/3600):(1000*($2)) with lines linestyle 4 ti "3.0 PhOH"
#     "SuFEx-R1-BSF-3xPhOH-3-22-20.dat" using (($1)/3600):(1000*($2)) with lines linestyle 4 ti "3.0 PhOH"


quit
