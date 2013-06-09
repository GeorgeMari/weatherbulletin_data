#!/bin/sh
rm metar_lines_only.txt
rm metar_urls.txt
rm metars_only.txt
rm bad_metars.txt
cat stations_full.txt | gawk 'BEGIN { FS = "" } {if ($63 == "X" && $82 == "U" && $83 == "S") print $0;}' > metar_lines_only.txt
# cat metar_lines_only.txt | gawk 'BEGIN {FIELDWIDTHS="20 4";} {print "http://w1.weather.gov/xml/current_obs/"$2".xml";}' > metar_urls.txt
cat metar_lines_only.txt | gawk 'BEGIN {FIELDWIDTHS="20 4";} {print $2;}' > metars_only.txt

# Process the metar_urls.txt file.  For each line, 
# run it through curl.  If it results in a 404 error, 
# write the input line to the bad_metars.txt file.
for metar in $(cat metars_only.txt); do
	curl -f http://w1.weather.gov/xml/current_obs/$metar.xml;
	if [[ $? -ne 0 ]]; then
		echo $metar >> bad_metars.txt
	fi
done
