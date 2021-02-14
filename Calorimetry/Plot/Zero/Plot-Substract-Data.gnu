#set terminal postscript eps
set terminal postscript eps color
set key inside right top vertical Right noreverse enhanced autotitles box linetype -1 linewidth 0.200
set title "SUFEX BSF T=25°" 
set ylabel "Heat flow (P), mW" font "Helvetica-Bold,26"
set xlabel "Time, h" font "Helvetica-Bold,26"
set bars small
#set xrange [0:50]
#set yrange [-100:0]
#set size 0.5,0.5
#set terminal postscript enhanced "Courier" 20

set terminal svg size 1200,900 font "Helvetica,26"
set key autotitle columnhead
set datafile separator ";"

set termoption dash

#set linestyle 1 lt 1 lw 2 lc rgb "red" dashtype 1
#set linestyle 2 lt 2 lw 2 lc rgb "blue" dashtype 1
#set linestyle 3 lt 3 lw 2 lc rgb "green" dashtype 1

set linestyle 1 lt 1 lw 3 lc rgb "black" 
set linestyle 2 lt 2 lw 1 lc rgb "gray"
set linestyle 3 lt 3 lw 1 lc rgb "gray"
set linestyle 4 lt 4 lw 1 lc rgb "gray"
set linestyle 5 lt 5 lw 1 lc rgb "gray"
set linestyle 6 lt 6 lw 1 lc rgb "gray"
set linestyle 7 lt 7 lw 1 lc rgb "gray"
set linestyle 8 lt 8 lw 1 lc rgb "gray"
set linestyle 9 lt 9 lw 1 lc rgb "gray"

#set xrange [0:40]
#set key samplen -1 spacing 1.3 font ",26" box lw 0
#set nokey

#set output "Substract-test.svg"
#plot \
#     "DCM-2-14-19.csv" using (($1)/3600):(1000*($2)) with lines linestyle 2 lc rgb "green" ti "DCM", \
#     "Sum.csv" using (($1)/3600):(1000*($2)) with lines linestyle 1 lc rgb "black" ti "Sum", \
#     "Substract.csv" using (($1)/3600):(1000*($2)) with lines linestyle 3 lc rgb "red" ti "Substract"

#set output "sub-SuFEx-R1-BSF-T20-6-10-20.svg"
#plot \
#     "DCM-2-14-19.csv" using (($1)/3600):(1000*($2)) with lines linestyle 2 lc rgb "green" ti "DCM", \
#     "SuFEx-R1-BSF-T20-6-10-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 1 lc rgb "black" ti "SuFEx-R1-BSF-T20-6-10-20", \
#     "sub-SuFEx-R1-BSF-T20-6-10-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 3 lc rgb "red" ti "Substract"

#set output "sub-SuFEx-R1-BSF-T20-6-8-20.svg"
#plot \
#     "DCM-2-14-19.csv" using (($1)/3600):(1000*($2)) with lines linestyle 2 lc rgb "green" ti "DCM", \
#     "SuFEx-R1-BSF-T20-6-8-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 1 lc rgb "black" ti "SuFEx-R1-BSF-T20-6-8-20", \
#     "sub-SuFEx-R1-BSF-T20-6-8-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 3 lc rgb "red" ti "Substract"


#set output "Sum-Exp.svg"
#set title "SUFEX BSF T=25°" 
#set xrange [0:50]
#set nokey
#plot \
#     "SuFEx-R1-BSF-T25-1-29-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "R1-BSF-T25-1-29-20", \
#     "SuFEx-R1-BSF-T25-1-30-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "R1-BSF-T25-1-30-20", \
#     "SuFEx-R1-BSF-T25-1-31-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 4 ti "R1-BSF-T25-1-31-20", \
#     "SuFEx-R1-BSF-T25-2-3-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 5 ti "R1-BSF-T25-2-3-20", \
#     "SuFEx-R1-BSF-T25-2-5-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 6 ti "R1-BSF-T25-2-5-20", \
#     "SuFEx-R1-BSF-T25-2-7-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 7 ti "R1-BSF-T25-2-7-20", \
#     "SuFEx-R1-BSF-T25-1-24-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 8 ti "R1-BSF-T25-1-24-20", \
#     "Sum-Exp-All.dat" using (($1)/3600):(1000*($2)) with lines linestyle 1 ti "Sum"


#set output "Sum-Zero.svg"
#set title "Zero DCM T=25°" 
#set xrange [0:50]
#set nokey
#plot \
#     "DCM-T25-8-13-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "DCM-T25-8-13-20", \
#     "DCM-T25-8-14-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "DCM-T25-8-14-20", \
#     "DCM-T25-8-17-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 4 ti "DCM-T25-8-17-20", \
#     "DCM-T25-8-18-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 5 ti "DCM-T25-8-18-20", \
#     "DCM-T25-8-22-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 6 ti "DCM-T25-8-22-20", \
#     "Sum-Zero-All.dat" using (($1)/3600):(1000*($2)) with lines linestyle 1 ti "Sum Zero"


#set linestyle 1 lt 1 lw 3 lc rgb "red" dashtype 1
#set linestyle 2 lt 2 lw 2 lc rgb "black" dashtype 1
#set linestyle 3 lt 3 lw 2 lc rgb "gray" dashtype 1

#set output "Exp-Zero.svg"
#set title "SUFEX (All Exp) - (All Zero) DCM T=25°" 
#set xrange [0:30]
#set key inside right top vertical Right noreverse enhanced autotitles box linetype -1 linewidth 0.200
#plot \
#     "Sum-Exp-All.dat" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "Sum all Exp", \
#     "Sum-Zero-All.dat" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "Sum all Zero", \
#     "Exp-Zero.dat" using (($1)/3600):(1000*($2)) with lines linestyle 1 ti "Exp - Zero"

set output "Zero-T15.svg"
set title "SUFEX BSF T=15°"
set xrange [0:50]
set nokey
plot \
     "DCM-T15-10-2-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "DCM-T15-10-2-20", \
     "DCM-T15-10-6-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "DCM-T15-10-6-20", \
     "DCM-T15-2-15-19.csv" using (($1)/3600):(1000*($2)) with lines linestyle 4 ti "DCM-T15-2-15-19", \
     "DCM-T15-2-19-19.csv" using (($1)/3600):(1000*($2)) with lines linestyle 5 ti "DCM-T15-2-19-19", \
     "DCM-T15-9-26-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 6 ti "DCM-T15-9-26-20", \
     "DCM-T15-9-28-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 7 ti "DCM-T15-9-28-20", \
     "DCM-T15-9-30-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 8 ti "DCM-T15-9-30-20", \
     "DCM-T15.dat" using (($1)/3600):(1000*($2)) with lines linestyle 1 lc rgb "red" ti "Int", \
     "DCM-T15-old.dat" using (($1)/3600):(1000*($2)) with lines linestyle 1 ti "Sum"


set output "Zero-T20.svg"
set title "SUFEX BSF T=20°"
set xrange [0:50]
set nokey
plot \
     "DCM-T20-2-14-19.csv" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "DCM-T20-2-14-19", \
     "DCM-T20-8-28-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "DCM-T20-8-28-20", \
     "DCM-T20-8-31-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 4 ti "DCM-T20-8-31-20", \
     "DCM-T20-9-17-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 5 ti "DCM-T20-9-17-20", \
     "DCM-T20-9-19-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 6 ti "DCM-T20-9-19-20", \
     "DCM-T20-9-21-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 7 ti "DCM-T20-9-21-20", \
     "DCM-T20-9-23-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 8 ti "DCM-T20-9-23-20", \
     "DCM-T20.dat" using (($1)/3600):(1000*($2)) with lines linestyle 1 lc rgb "red" ti "Int", \
     "DCM-T20-old.dat" using (($1)/3600):(1000*($2)) with lines linestyle 1 ti "Sum"


set output "Zero-T25.svg"
set title "Zero DCM T=25°" 
set xrange [0:50]
set nokey
plot \
     "DCM-T25-8-13-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "DCM-T25-8-13-20", \
     "DCM-T25-8-14-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "DCM-T25-8-14-20", \
     "DCM-T25-8-17-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 4 ti "DCM-T25-8-17-20", \
     "DCM-T25-8-18-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 5 ti "DCM-T25-8-18-20", \
     "DCM-T25-8-22-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 6 ti "DCM-T25-8-22-20", \
     "DCM-T25-8-24-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 7 ti "DCM-T25-8-24-20", \
     "DCM-T25.dat" using (($1)/3600):(1000*($2)) with lines linestyle 1 lc rgb "red" ti "Int", \
     "DCM-T25-old.dat" using (($1)/3600):(1000*($2)) with lines linestyle 1 ti "Sum"


set output "Zero-T30.svg"
set title "Zero DCM T=30°" 
set xrange [0:50]
set nokey
plot \
     "DCM-T30-5-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "DCM-T30-5-20", \
     "DCM-T30-9-11-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "DCM-T30-9-11-20", \
     "DCM-T30-9-13-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 4 ti "DCM-T30-9-13-20", \
     "DCM-T30-9-7-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 5 ti "DCM-T30-9-7-20", \
     "DCM-T30-9-8-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 6 ti "DCM-T30-9-8-20", \
     "DCM-T30.dat" using (($1)/3600):(1000*($2)) with lines linestyle 1 lc rgb "red" ti "Int", \
     "DCM-T30-old.dat" using (($1)/3600):(1000*($2)) with lines linestyle 1 ti "Sum"



set linestyle 1 lt 1 lw 2 lc rgb "#330000" 
set linestyle 2 lt 2 lw 2 lc rgb "#770000"
set linestyle 3 lt 3 lw 2 lc rgb "#AA0000"
set linestyle 4 lt 4 lw 2 lc rgb "#FF0000"
set output "Zero.svg"
set title "Zero DCM" 
set xrange [0:50]
set key
plot \
     "DCM-T15.dat" using (($1)/3600):(1000*($2)) with lines linestyle 1 ti "DCM T15", \
     "DCM-T20.dat" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "DCM T20", \
     "DCM-T25.dat" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "DCM T25", \
     "DCM-T30.dat" using (($1)/3600):(1000*($2)) with lines linestyle 4 ti "DCM T30"

quit






