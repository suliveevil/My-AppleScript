tell application "System Events"
	tell process "SystemUIServer"
		if menu bar item "通知中心" is enabled then
			tell menu bar 1
				click menu bar item "通知中心"
			end tell
		else
			return
		end if
	end tell
end tell