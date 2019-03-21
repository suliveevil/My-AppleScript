on run
	try
		tell application "Finder"
			set currFolder to POSIX path of (folder of the front window as string)
		end tell
	on error
		set currFolder to "./"
	end try
	
	
	tell application "Terminal"
		if it is running then
			set itermisrunning to true
		else
			set itermisrunning to false
		end if
		activate
		-- ŒƒµµΩ‚ ÕBrings an application to the front, and opens it if it is on the local computer and not already running.
		if itermisrunning = true then
			tell application "System Events" to keystroke "t" using command down
		end if
		do script ("cd " & "'" & currFolder & "'") in front window
	end tell
	
end run