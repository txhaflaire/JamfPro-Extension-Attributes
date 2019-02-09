#!/bin/sh

# Check to see if macOS Laps is installed and report version
macOSLapsInstalled="$(ls /usr/local/laps/ | grep macOSLAPS)"
if [ "$macOSLapsInstalled" != "macOSLAPS" ]; then
	echo "<result>Not Available</result>"
else
	macOSLapsVersion="$(pkgutil --info edu.psu.macOSLAPS | grep "version" | awk '{print $2}')"
	echo "<result>$macOSLapsVersion</result>"
fi
