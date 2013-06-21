# Read stations_full.txt
# if line has last column == "US"
#		$metar = $5
#		$nexrad = $6
#		if line has metar == "X"
# 			use curl -f to check url for that metar
# 			if curl failed 
#				set $metar to "B  " for bad.
#			end if
#		end if
#		if line has nexrad == "X"
#			use curl -f to check url for that nexrad station
#			if curl failed
#				set $nexrad to "B  " for bad.
#			end if
#		end if
#		print $1 $2 $3 $4 $metar $nexrad $7 $8
# end if
BEGIN {
		FIELDWIDTHS="20 6 6 30 3 3 13 2";
		# $0 - entire record
		# $2 - 4 letter metar code
		# $3 - 3 letter FAA code for radar
		# $5 - Metar at this site?  X is yes, otherwise no.
		# $6 - Nexrad radar site? X is yes, otherwise no.
		# $8 - 2 letter country
		}
		{
		if ($8 == "US") {
			metar = $5;
			nexrad = $6;
			if (metar == "X  ") {
				# use curl -f to verify data is available for this metar code.
				cmd = "curl -f -s http://w1.weather.gov/xml/current_obs/" substr($2, 1, 4) ".xml > /dev/null";
				# print cmd;
				if (system(cmd) != 0) {
					# curl failed, so mark this as a bad metar code with a B, instead of an X.
					metar = "B  ";
					}
				}
			if (nexrad == "X  ") {
				# use curl -f to verify data is available for this nexrad station.
				cmd = "curl -f -s http://radar.weather.gov/ridge/RadarImg/N0R/" substr($3, 1, 3) "_N0R_0.gif > /dev/null";
				# print cmd;
				if (system(cmd) != 0) {
					# curl failed, so mark this as a bad nexrad code with a B, instead of an X.
					nexrad = "B  ";
					}
				}
			print $1 $2 $3 $4 metar nexrad $7 $8
			}
#		else { print $8 }
		}
