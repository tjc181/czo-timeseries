#!/bin/bash 

#
# Fetch CSVs and generate plots
#
# Tom Canich <tjc181@psu.edu> 2022-09-27
#

startDate=$(date '+%Y-%m-%d %H:%M:%S' -d '7 days ago')
endDate=$(date '+%Y-%m-%d %H:%M:%S')
endPoint=http://www.czo.psu.edu/SQL_Query3.php

tables="SC_TwinBridge_stream SC_TwinBridge_meteo"

for table in $tables
do
    curl \
        -d SubmitCheck=sent \
	-d tableName=$table \
        -d fileName=$table \
        -d startDate=$startDate \
        -d endDate=$endDate \
        $endPoint > $table.csv
	gnuplot < $table.gp > $table.png
done


exit 0
