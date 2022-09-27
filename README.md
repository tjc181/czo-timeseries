# Time series plot generator

Requested by Brandon Forsythe

Generate time series plot on a 7-day rolling window from data in database
tables SC_TwinBridge_stream and SC_TwinBridge_meteo.  

stream_plot.gp is a gnuplot recipe for plotting SC_TwinBridge_stream
data from columns TmStamp, SW_Depth_m, SW_Depth_m_Avg, and WaterTemp_C.

meteo_plot.gp will be a similar recipe for plotting SC_TwinBridge_meteo
data.

A script will pull CSV data hourly from
http://www.czo.psu.edu/data/ShaversCreek/sc_twinbridge.html, generate
the two plot images.  A web page will display the resulting images.

