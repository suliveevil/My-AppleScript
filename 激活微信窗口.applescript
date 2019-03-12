--frontmost app
----tell application "System Events"
--tell application id "com.tencent.xinWeChat"
-- activate
----set application "WeChat" to frontmost application
--end tell
----end tell

--AXMain
--tell application "System Events"
--	--set frontmostApp to name of first item of (processes whose frontmost is true)
--	set frontmostApp to name of processes whose name contains "wechat"
--	tell process frontmostApp
--		set oWin to first window whose name contains "WeChat"
--		set value of attribute "AXMain" of oWin to true
--	end tell
--end tell

--AXRaise
tell application "System Events"
	tell application process "WeChat"
		tell (front window) to perform action "AXRaise"
	end tell
end tell

--visible
--tell application "System Events"
--	tell application process "WeChat"
--		if its visible = false then
--			set its visible to true
--		end if
--	end tell
--end tell
