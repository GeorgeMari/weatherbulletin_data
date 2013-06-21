List of stations is listed as being updated continuously at:

http://www.rap.ucar.edu/weather/surface/stations.txt

However, this has not been updated since 22-MAR-2012.  I found a more up-to-date file at:

http://www.aviationweather.gov/static/adds/metars/stations.txt

...but this file has not changed the header information, and instead points back to the 
original location.

Place this file in your working directory with a name like sations_full_20130430.txt, then run

$ gawk -f verify_metars2.awk stations_full_20130430.txt > stations_new_20130430.txt

It should take between 5 and 10 minutes to run.

There is another source of Metar stations at http://weather.noaa.gov/data/nsd_cccc.txt but this
is in a different format, and would need a new parsing program.  I don't know if it contains 
all the data elements we need, either.

