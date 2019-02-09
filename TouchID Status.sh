#!/bin/sh

TouchIDStatus=`bioutil -rs | grep functionality | awk '{print $4}'`
if [[ "$TouchIDStatus" = "0" ]]; then
	result="Disabled"
elif [[ "$TouchIDStatus" = "1"  ]]; then
	result="Enabled"
else 
	result="Error"
fi
echo "<result>$result</result>"
