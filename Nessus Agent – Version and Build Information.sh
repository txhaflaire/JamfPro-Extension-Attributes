#!/bin/sh

# Check to see if Nessus Agent is installed
NessusAgentInstalled="$(ls /Library/NessusAgent/run/sbin/ | grep nessuscli)"
if [ "$NessusAgentInstalled" != "nessuscli" ]; then
  echo "<result>N/A</result>"
else
  NessusAgentVersion="$(/Library/NessusAgent/run/sbin/nessuscli -v | awk 'NR==1{print $3 " " $4 " " $5}')"
  echo "<result>$NessusAgentVersion</result>"
fi
