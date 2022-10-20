set title offset 2,0 enhanced "Shaver's Creek Twin Bridge Surface Water Depth (m) and Water Temperature (C) \n Last Run: " .strftime("%a %b %d %H:%M EST", time(0)-18000)
set key outside bottom center
set term png
set xdata time
set timefmt '%Y-%m-%d %H:%M:%S'
set datafile separator ','
set format x "%Y-%m-%d"
set offset graph 0, 0, 0.001, 0.001
set xtics rotate 
set ytics nomirror 
set y2tics nomirror 
set ylabel "Depth (m)"
set y2label "Temp (C)"
set grid
plot "SC_TwinBridge_stream.csv" using 1:3 title "SW Depth" with lines axis x1y1, \
     "SC_TwinBridge_stream.csv" using 1:5 title "Water Temp" with lines axis x1y2
