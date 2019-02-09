#!/bin/sh

if [ "$(dscl . -read /Users/root UserShell | awk '{print $NF}')" == "/usr/bin/false" ]
then echo "<result>Yes</result>"
else echo "<result>No</result>"
fi
