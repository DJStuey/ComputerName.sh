#!/bin/bash

##get current computername
COMPNAME=`/usr/sbin/scutil --get ComputerName`
#AppleScript to get New Computer Name
NEWNAME=`/usr/bin/osascript <<EOT
tell application "System Events"
activate
set myReply to text returned of (display dialog "Please enter the desired computer name:" ¬
default answer "$COMPNAME" ¬
with title "Ivanhoe Grammar IT" ¬
buttons {"Continue", "Cancel"} ¬
default button 1)
end tell
EOT`

#set Computer Name to name collected from AppleScript
/usr/sbin/scutil --set ComputerName $NEWNAME

exit 0
