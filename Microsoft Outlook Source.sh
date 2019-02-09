#!/bin/bash

appTitle="Outlook"

if [ -d /Applications/"Microsoft ${appTitle}".app ]
then
	if [ -d /Applications/"Microsoft ${appTitle}".app/Contents/_MASReceipt/ ]
	then
		result="Installed through App Store"
	else
		result="Installed through CDN"
	fi
else
	result="Cannot find Microsoft ${appTitle}.app..."
	fi

echo "<result>$result</result>"
