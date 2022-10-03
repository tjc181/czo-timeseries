# Time series plot generator

Requested by Brandon Forsythe

Generate time series plot on a 7-day rolling window from data in database
tables SC_TwinBridge_stream and SC_TwinBridge_meteo.  

SC_TwinBridge_stream.gp is a gnuplot recipe for plotting
SC_TwinBridge_stream data from columns TmStamp, SW_Depth_m,
and WaterTemp_C.

SC_TwinBridge_meteo.gp is recipe for plotting SC_TwinBridge_meteo
data from columns TmStamp, AirTemp_C, Rel_Hum, and Rain_mm_Tot.

genplot.sh pulls CSV data from http://www.czo.psu.edu/SQL_Query3.php
via form posting using curl.  The resulting CSV data are then used by
the above gnuplot recipes to produce PNG formatted images.

