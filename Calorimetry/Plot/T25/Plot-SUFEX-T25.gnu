#set terminal postscript eps
set terminal postscript eps color
set key inside right top vertical Right noreverse enhanced autotitles box linetype -1 linewidth 0.200
set title "SUFEX T=25°" 
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
set linestyle 1 lt 1 lw 2
set linestyle 2 lt 2 lw 2
set linestyle 3 lt 3 lw 2
set linestyle 4 lt 4 lw 2
set linestyle 5 lt 5 lw 2
set linestyle 6 lt 6 lw 2
set linestyle 7 lt 7 lw 2


set output "SUFEX-T25.svg"
set xrange [0:40]
#set key samplen -1 spacing 1.3 font ",26" box lw 0
#set nokey
plot \
     "SuFEx-R1-BSF-T25-1-29-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "BSF", \
     "SuFEx-R1-BSF-T25-1-30-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "BSF", \
     "SuFEx-R1-BSF-T25-1-31-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "BSF", \
     "SuFEx-R1-BSF-T25-2-3-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "BSF", \
     "SuFEx-R1-BSF-T25-2-5-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "BSF", \
     "SuFEx-R1-BSF-T25-2-7-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "BSF", \
     "SuFEx-R1-BSF-CH3-2-19-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "BSF-Me", \
     "SuFEx-R1-BSF-CH3-2-21-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "BSF-Me", \
     "SuFEx-R1-BSF-CH3-2-23-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "BSF-Me", \
     "SuFEx-R1-BSF-CH3-2-25-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "BSF-Me", \
     "SuFEx-R1-BSF-NO2-T25-2-10-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 4 ti "BSF-NO2", \
     "SuFEx-R1-BSF-NO2-T25-2-12-20.csv" using (($1)/3600):(1000*($2)) with lines linestyle 4 ti "BSF-NO2"


set output "SUFEX-T25-Sum.svg"
#set xrange [0:40]
#set key samplen -1 spacing 1.3 font ",26" box lw 0
#set nokey
plot \
     "Sum-BSF-T25.dat" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "BSF", \
     "Sum-BSF-CH3-T25.dat" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "BSF-Me", \
     "Sum-BSF-NO2-T25.dat" using (($1)/3600):(1000*($2)) with lines linestyle 4 ti "BSF-NO2", \


set output "SUFEX-T25-Sum-Zero.svg"
#set xrange [0:40]
#set key samplen -1 spacing 1.3 font ",26" box lw 0
#set nokey
plot \
     "BSF-Zero-T25.dat" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "BSF", \
     "BSF-CH3-Zero-T25.dat" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "BSF-Me", \
     "BSF-NO2-Zero-T25.dat" using (($1)/3600):(1000*($2)) with lines linestyle 4 ti "BSF-NO2", \


quit
