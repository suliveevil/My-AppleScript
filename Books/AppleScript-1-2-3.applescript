-- 	关闭所有访达窗口
-- tell application "Finder" to close every window

-- 打开硬盘
-- tell application "Finder" to open startup disk

-- 获取最前面访达窗口的名称
-- tell application "Finder" to get the name of front Finder window

-- 关闭指定访达窗口
-- tell application "Finder" to close Finder window "Macintosh HD"

-- 多行显示一行的内容¬ `⌥L` `⌥↵`
-- tell application "Finder" to ¬
--	get the index of Finder window "Macintosh HD"

-- 获得访达窗口的名称
-- tell application "Finder" to get the name of Finder window 1

-- tell application "Finder" to ¬
--	get the index of the second Finder window

-- tell application "Finder" to get the index of the Finder window after the front Finder window
-- tell application "Finder" to get the index of the Finder window before the last Finder window

-- Toggle first last Finder window
-- tell application "Finder" to ¬
-- 	set the index of the first Finder window to ¬
-- 		the index of the last Finder window

--
-- tell application "Finder" to get the target of the front window

-- tell application "Finder" to ¬
-- 	set the target of the front Finder window to the startup disk

-- tell application "Finder" to ¬
-- 	set the target of the last Finder window to home

-- tell application "Finder" to ¬
-- 	set toolbar visible of the front Finder window to true

-- tell application "Finder" to ¬
-- get the current view of the front Finder window

-- tell application "Finder" to ¬
-- 	get the position of the front Finder window

-- tell application "Finder" to ¬
-- 	set the position of the front Finder window to {300, 134}

-- {0, 23, 1440, 900}
-- tell application "Finder" to get the bounds of the front window

-- {0, 0, 1440, 900}
-- tell application "Finder" to ¬
--	get the bounds of the window of the desktop
-- 
-- tell application "Finder" to select the last Finder window

-- bundle ID、URL schemes
-- get id of application "Finder"
-- get URLSchemes of application id "com.yinxiang.Mac"

-- Safari
-- tell application "Safari" to close every window
-- tell application "Safari" to open location "http://automator.us"

-- tell application "Finder"
-- get visible of the front Finder window
-- end tell

-- toggle collapsed
--tell application "Finder"
--	if collapsed of the front Finder window is false then
--		set collapsed of the front Finder window to true
--	else
--		set collapsed of the front Finder window to false
--	end if
--end tell

--tell application "Finder"
--	tell the front Finder window
--		get target
--		get current view
--		get its icon view options
--		get its list view options
--		get its column view options
--		get toolbar visible
--		get statusbar visible
--		get sidebar width
--		get id
--		get position
--		get bounds
--		get titled
--		get name
--		get index
--		-- get closeabe
--		get floating
--		get modal
--		get resizable
--		get zoomable
--		get visible
--		get collapsed
--	end tell
--end tell

--tell application "Finder"
--	tell the front Finder window
--		set current view to icon view
--		set toolbar visible to true
--		set statusbar visible to true
--		set sidebar width to 135
--		set zoomed to false
--		set collapsed to false
--		set bounds to {22, 66, 700, 600}
--		set target to (path to documents folder)
--		set index to 1
--	end tell
--end tell

-- 新建文件
--tell application "Finder"
--	activate
--	make new document file at folder "Vim" of desktop ¬
--		with properties {name:"My Text Document.md"}
--end tell

-- 新建文件软连接
tell application "Finder"
	activate
	make new document file at folder "Vim" of desktop ¬
		with properties {name:"My Text Document.md"}
end tell




