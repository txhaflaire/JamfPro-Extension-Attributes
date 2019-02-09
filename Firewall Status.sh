#!/bin/bash

status=`defaults read /Library/Preferences/com.apple.alf globalstate`

if [[ "$status" == "1" ]]; then
echo "<result>On</result>"
else
echo "<result>Off</result>"
fi
