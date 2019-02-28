# Send Safari URL to Chrome



```shell
tell application "Safari"	
    set myURL to URL of current tab of front window
end tell

tell application "Google Chrome"		
    if (count windows) is 0 then		
        make new window		
        set URL of tab 1 of window 1 to myURL	
    else
        activate front window		
        make new tab at front window		
        set URL of tab (count tabs of front window) of front window 
            to myURL	
    end if	
end tell
```

