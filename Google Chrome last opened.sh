#!/bin/bash

apppath="/Applications/Google Chrome.app"
usedate=$(/usr/bin/mdls -name kMDItemLastUsedDate "$apppath" | /usr/bin/awk '{print $3, $4}')

if [ "$usedate" == "(null)" ]
then
	result="2001-01-01 01:01:01"
else
	result="$usedate"
fi

echo "<result>$result</result>"
