use AppleScript version "2.4" -- Yosemite (10.10) or lateruse scripting additions

-- 截图增强v1.1.0 在Script Debugger 7.0.4测试通过-- 默认用户初始状态：显示桌面图标、显示菜单栏、自动隐藏程序坞（Dock）-- 隐藏桌面图标do shell script "chflags -h hidden ~/Desktop/*"-- 自动隐藏和显示菜单栏tell application "System Preferences" to reveal the ¬	anchor named "main" of ¬	pane id "com.apple.preference.general"tell application "System Events" to tell ¬	process "System Preferences" to tell ¬	window "通用" to tell ¬	checkbox "自动隐藏和显示菜单栏" to ¬	perform action "AXPress"delay 0.2
-- 调用系统快捷键 Shift + Command + 3截取全屏，下述1、2可以混用，请自由发挥-- 1 想区域截图请把key code 20 改为21（对应键盘上的4）或22（对应键盘上的5）-- 2 想把截图截取到剪贴板，请在花括号内增加【control down,】
tell application "System Events"	keystroke (key code 20 using {shift down, command down})end tell-- 延迟10秒，可自行更改delay 10
-- 显示桌面图标do shell script "chflags -h nohidden ~/Desktop/*"
-- 自动隐藏和显示菜单栏tell application "System Preferences" to reveal the ¬	anchor named "main" of ¬	pane id "com.apple.preference.general"tell application "System Events" to tell ¬	process "System Preferences" to tell ¬	window "通用" to tell ¬	checkbox "自动隐藏和显示菜单栏" to ¬	perform action "AXPress"quit application "System Preferences"