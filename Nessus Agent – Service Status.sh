#!/bin/sh

# Check to see if Nessus Agent is running
NessusAgentRunning="$(sudo launchctl list com.tenablesecurity.nessusagent | grep "PID" | awk '{ print $1 }' | tr -d '\"')"
if [ "$NessusAgentRunning" = "PID" ]; then
  echo "<result>Running</result>"
else
  echo "<result>Stopped</result>"
fi
