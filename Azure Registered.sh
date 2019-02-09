#!/bin/bash

# get the current user
loggedInUser=$(/usr/bin/python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");')

AADUNIQUEID="$(cat /Users/$loggedInUser/Library/Application\ Support/com.microsoft.CompanyPortal.usercontext.info | awk '/aadUniqueId/ {print $3}' | sed 's/"//g' | sed 's/;//g')"

if [[ "${AADUNIQUEID}" == "" ]] ; 
then
	/bin/echo "<result>Not Registered</result>"
else
	/bin/echo "<result>${AADUNIQUEID}</result>"
fi

exit 0
