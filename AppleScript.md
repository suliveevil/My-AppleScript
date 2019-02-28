# AppleScript

[TOC]

## 简介

## 使用

### [如何临时修改 macOS 应用的界面语言](https://sspai.com/post/44536)


### 截图辅助


<details>
<summary>details</summary>

```applescript
use AppleScript version "2.4" -- Yosemite (10.10) or lateruse scripting additions

-- 截图增强v1.1.0 在Script Debugger 7.0.4测试通过-- 默认用户初始状态：显示桌面图标、显示菜单栏、自动隐藏程序坞（Dock）-- 隐藏桌面图标do shell script "chflags -h hidden ~/Desktop/*"-- 自动隐藏和显示菜单栏tell application "System Preferences" to reveal the ¬	anchor named "main" of ¬	pane id "com.apple.preference.general"tell application "System Events" to tell ¬	process "System Preferences" to tell ¬	window "通用" to tell ¬	checkbox "自动隐藏和显示菜单栏" to ¬	perform action "AXPress"delay 0.2
-- 调用系统快捷键 Shift + Command + 3截取全屏，下述1、2可以混用，请自由发挥-- 1 想区域截图请把key code 20 改为21（对应键盘上的4）或22（对应键盘上的5）-- 2 想把截图截取到剪贴板，请在花括号内增加【control down,】
tell application "System Events"	keystroke (key code 20 using {shift down, command down})end tell-- 延迟10秒，可自行更改delay 10
-- 显示桌面图标do shell script "chflags -h nohidden ~/Desktop/*"
-- 自动隐藏和显示菜单栏tell application "System Preferences" to reveal the ¬	anchor named "main" of ¬	pane id "com.apple.preference.general"tell application "System Events" to tell ¬	process "System Preferences" to tell ¬	window "通用" to tell ¬	checkbox "自动隐藏和显示菜单栏" to ¬	perform action "AXPress"quit application "System Preferences"
```

</details>



### Record Screen QuickTimePlayer
[菜单栏上的任意功能，你都可以用 LaunchBar 来控制](https://sspai.com/post/39282)

<details>
<summary>details</summary>

```applescript
activate application "QuickTime Player"
tell application "System Events"
    tell process "QuickTime Player"
        set frontmost to true
        # 选择菜单栏上的文件「菜单」中的「新建屏幕录制」
        click menu item "新建屏幕录制" of menu "文件" of menu bar 1
        # 等待「屏幕录制」窗口出现
        repeat until exists window "屏幕录制"
        end repeat
        # 按下空格键
        tell application "System Events" to keystroke " "
    end tell
end tell
```

</details>


## 参考资料

<details>
<summary>details</summary>

### [Toggle Night Shift](https://forum.keyboardmaestro.com/t/toggle-night-shift/11175)


### [Toggle dark mode](https://forum.keyboardmaestro.com/t/keyboard-maestro-8-2-4-toggle-dark-mode-macro/12524)

### [手把手教你用 AppleScript 模拟鼠标键盘操作，实现 macOS 系统的自动化操作 - 少数派](https://sspai.com/post/43758)

### [Mac OS X巧用AppleScript 制作网络位置切换自动化脚本（自动配置PAC 文件） | DeveWork](https://devework.com/automatic-proxy-configuration-pac-applescript.html)


### [教程《一键切换声音输出》音箱耳机声卡切换](https://bbs.feng.com/read-htm-tid-10060724.html)


### [使用 AppleScript、Tags 和 Alfred 重新打造文件管理和搜索系统 - 少数派](https://sspai.com/post/42859)


### [AppleScript 入门：探索 macOS 自动化 - 少数派](https://sspai.com/post/46912?from=pricetag)



### [Mac AppleScript 自动完成按键](https://www.cnblogs.com/ficow/p/5574882.html)



### [Complete list of AppleScript key codes](https://eastmanreference.com/complete-list-of-applescript-key-codes)



### [关于AppleScript一些记录](https://bukkake.iteye.com/blog/828322)



### [AppleScript入门](https://www.cnblogs.com/whyandinside/archive/2013/05/01/3052767.html)



### [AppleScript for Python Programmers (Comparison Chart), by Aurelio Jargas](https://aurelio.net/articles/applescript-vs-python.html)

</details>


