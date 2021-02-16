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


set linestyle 1 lt 1 lw 2 lc rgb "#000000" 
set linestyle 2 lt 2 lw 2 lc rgb "#00CC00"
set linestyle 3 lt 3 lw 2 lc rgb "#CC0000"
set linestyle 4 lt 4 lw 2 lc rgb "#FF0000"


set output "BSF-DCM-T25.svg"
set title "BSF - DCM T25" 
set xrange [0:50]
set key
plot \
     "DCM-T25.dat" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "DCM", \
     "BSF-T25.dat" using (($1)/3600):(1000*($2)) with lines linestyle 1 ti "BSF", \
     "BSF-DCM-T25.dat" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "BSF - DCM"


set output "BSF-CH3-DCM-T25.svg"
set title "BSF-CH3 - DCM T25" 
set xrange [0:50]
set key
plot \
     "DCM-T25.dat" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "DCM", \
     "BSF-CH3-T25.dat" using (($1)/3600):(1000*($2)) with lines linestyle 1 ti "BSF-CH3", \
     "BSF-CH3-DCM-T25.dat" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "BSF-CH3 - DCM"


set output "BSF-NO2-DCM-T25.svg"
set title "BSF-NO2 - DCM T25" 
set xrange [0:50]
set key
plot \
     "DCM-T25.dat" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "DCM", \
     "BSF-NO2-T25.dat" using (($1)/3600):(1000*($2)) with lines linestyle 1 ti "BSF-NO2", \
     "BSF-NO2-DCM-T25.dat" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "BSF-NO2 - DCM"


set output "Compare-T25.svg"
set title "Compare T25" 
set xrange [5:50]
set key
plot \
     "BSF-DCM-T25.dat" using (($1)/3600):(1000*($2)) with lines linestyle 1 ti "BSF - DCM", \
     "BSF-CH3-DCM-T25.dat" using (($1)/3600):(1000*($2)) with lines linestyle 2 ti "BSF-CH3 - DCM", \
     "BSF-NO2-DCM-T25.dat" using (($1)/3600):(1000*($2)) with lines linestyle 3 ti "BSF-NO2 - DCM"


quit






