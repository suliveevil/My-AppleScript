property _template : "<li><a href=\"%url\">%name</a></li>"

--search and replace function for template
on snr(tofind, toreplace, TheString)
	set ditd to text item delimiters
	set text item delimiters to tofind
	set textItems to text items of TheString
	set text item delimiters to toreplace
	if (class of TheString is string) then
		set res to textItems as string
	else -- if (class of TheString is Unicode text) then
		set res to textItems as Unicode text
	end if
	set text item delimiters to ditd
	return res
end snr

set prettyDate to do shell script "date '+%A, %B %d, %Y at %l:%M %p'"
set theTitle to "Bookmarks " & prettyDate
set urlList to "<ul>"

tell application "Safari"
	set tabList to every tab of front window
	repeat with aTab in tabList
		set aLink to _template
		set aLink to my snr("%name", name of aTab, aLink)
		set aLink to my snr("%url", URL of aTab, aLink)
		set urlList to urlList & aLink & return
	end repeat
end tell
set urlList to urlList & "</ul>"

tell application "Evernote"
	set theNote to create note with html urlList title theTitle notebook "Bookmarks"
end tell