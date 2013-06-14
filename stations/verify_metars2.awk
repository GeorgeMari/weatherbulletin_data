# Read stations_full.txt
# if line has Metar column == "X" and last column == "US"
# 		use curl -f to check url for that metar
# 		if curl failed print out record but change metar to "Z"
#		else print out record unaltered
#		end if
# end if
# NOTE: Need to take into account Nexrad value in column 66.
BEGIN {
		FIELDWIDTHS="20 6 36 1 18 2";
		# $0 - entire record
		# $2 - 4 letter metar code
		# $4 - Metar at this site?  X is yes, otherwise no.
		# $6 - 2 letter country
		}
		{
		if ($6 == "US" && $4 == "X") {
			# use curl -f to verify data is available for this metar code.
			cmd = "curl -f -s http://w1.weather.gov/xml/current_obs/" substr($2, 1, 4) ".xml > null";
			# print cmd;
			if (system(cmd) != 0) {
				print $1 $2 $3 "B" $5 $6;
				}
			else {
				print $0;
				}
			}
		# else {print "Not US or metar:", $4, $6;}
		}
