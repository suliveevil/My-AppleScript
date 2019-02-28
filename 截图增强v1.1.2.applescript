use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

-- 截图增强v1.1.2
-- 默认用户初始状态：显示桌面图标、显示菜单栏、自动隐藏程序坞（Dock）
-- The Script will hide your Desktop and MenuBar
-- It assume you set MenuBar **Not AutoHide** and the **Dock AutoHide** already.
-- update: 添加注释（序号）

-- 1. 隐藏其他所有app(Hide all other apps)
-- tell application "System Events"
-- keystroke (key code UInt16(4) using {option down, command down})
-- end tell

-- 2. 隐藏桌面图标(Hide Desktop Icon)
do shell script "chflags -h hidden ~/Desktop/*"

-- 3. 自动隐藏和显示菜单栏(Toggle AutoHide MenuBar)
tell application "System Preferences" to reveal the ¬
	anchor named "main" of ¬
	pane id "com.apple.preference.general"
tell application "System Events" to tell ¬
	process "System Preferences" to tell ¬
	window "通用" to tell ¬
	checkbox "自动隐藏和显示菜单栏" to ¬
	perform action "AXPress"
delay 0.2

-- 4. 调用系统快捷键 Shift + Command + 3截取全屏，下述1、2可以混用，请自由发挥
-- use System Keyboard Shotcut：Shift + Command + 3
-- 4.1 想区域截图请把key code 20 改为21（对应键盘上的4）或22（对应键盘上的5）
-- Area screenshot: change key code 20 to 21（on Device it is 4） or 22（on Device it is 5）
-- 4.2 想把截图截取到剪贴板，请在花括号内增加【control down,】
-- Capture Screenshot to Clipboard，add 【control down,】 in curly braces

tell application "System Events"
	keystroke (key code 20 using {shift down, command down})
end tell

-- 延迟10秒，可自行更改(delay 10 seconds，you can change that at your wish)
delay 10

-- 5. 显示桌面图标(Show Desktop Icon)
-- Show Desktop Icon
do shell script "chflags -h nohidden ~/Desktop/*"

-- 6. 自动隐藏和显示菜单栏(Toggle AutoHide MenuBar)
tell application "System Preferences" to reveal the ¬
	anchor named "main" of ¬
	pane id "com.apple.preference.general"
tell application "System Events" to tell ¬
	process "System Preferences" to tell ¬
	window "通用" to tell ¬
	checkbox "自动隐藏和显示菜单栏" to ¬
	perform action "AXPress"
quit application "System Preferences"
