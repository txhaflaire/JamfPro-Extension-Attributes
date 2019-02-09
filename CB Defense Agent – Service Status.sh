#!/bin/sh

# Check to see if CB Defense Agent is running
CbdefenseAgentRunning="$(launchctl list com.carbonblack.defense.ui | grep "PID" | awk '{print$3}' | tr -d ';"')"
if [ "$CbdefenseAgentRunning" = "-" ]; then
	echo "<result>Stopped</result>"
else
	echo "<result>Running</result>"
fi
