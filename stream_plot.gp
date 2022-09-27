set title "Shaver's Creek Twin Bridge Surface Water Depth (m) and Water Temperature (C)\n Last Run: " .strftime("%a %b %d %H:%M", time(0)+28800)
set term png
set xdata time
set timefmt '%Y-%m-%d %H:%M:%S'
set datafile separator ','
set format x "%Y-%m-%d"
set xtics rotate timedate
set ytics nomirror numeric
set y2tics nomirror numeric
set ylabel "Depth (m)"
set y2label "Temp (C)"
set grid
plot "7-day.csv" using 1:3 title "SW Depth" with lines axis x1y1, \
     "7-day.csv" using 1:5 title "Water Temp" with lines axis x1y2
