#!/bin/sh

# Check to see if macOS Laps is installed
macOSLapsInstalled="$(ls /usr/local/laps/ | grep macOSLAPS)"

if [ "$macOSLapsInstalled" != "macOSLAPS" ]; then
	echo "<result>Not Installed</result>"
else
	echo "<result>Installed</result>"
fi
