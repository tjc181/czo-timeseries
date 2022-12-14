set title offset 2,0 enhanced "Shaver's Creek Outlet at Church Air Temperature (C), Relative Humidity, \n and Precipitation (mm) \n Last Run: " .strftime("%a %b %d %H:%M UTC", time(0))
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
set ylabel "Temp (C) / Rain Total (mm)"
set y2label "Relative Humidity (%)"
set grid
plot "SC_TwinBridge_meteo.csv" using 1:3 title "Air Temp" with lines axis x1y1, \
     "SC_TwinBridge_meteo.csv" using 1:4 title "Relative Humidity" with lines axis x1y2, \
     "SC_TwinBridge_meteo.csv" using 1:5 title "Rain Total" with lines axis x1y1
