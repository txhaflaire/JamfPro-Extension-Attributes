#!/bin/bash

UnlockmymacStatus=`bioutil -rs | grep unlock | awk '{print $5}'`
if [[ "$UnlockmymacStatus" = "0" ]]; then
	result="Disabled"
elif [[ "$UnlockmymacStatus" = "1"  ]]; then
	result="Enabled"
else 
	result="Error"
fi
echo "<result>$result</result>"


