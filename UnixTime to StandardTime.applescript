use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

on epoch2datetime(epochseconds)
    --Found at Erik's Lab (http://erikslab.com/2006/09/05/how-to-convert-an-epoch-time-to-a-meaningful-date-and-time/)
    set myshell1 to "date -r "
    set myshell2 to " "+%m/%d/%Y %H:%M""
    set theDatetime to do shell script (myshell1 & epochseconds & myshell2)
    return date theDatetime
end epoch2datetime