#!/bin/bash

appTitle="OneDrive"

if [ -d /Applications/"${appTitle}".app ]
then
	if [ -d /Applications/"${appTitle}".app/Contents/_MASReceipt/ ]
	then
		result="Installed through App Store"
	else
		result="Installed through CDN"
	fi
else
	result="Cannot find ${appTitle}.app..."
	fi

echo "<result>$result</result>"
