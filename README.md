# AppleScript

AppleScript 相关，还有部分 shell scripts。

[TOC]

## 简介


[Introduction to AppleScript Language Guide](https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/introduction/ASLR_intro.html#//apple_ref/doc/uid/TP40000983-CH208-SW1)


## 使用

### [如何临时修改 macOS 应用的界面语言](https://sspai.com/post/44536)

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

## OSAX（Scripting Additions）

### [Smile companion osax](http://www.satimage.fr/software/en/downloads/downloads_companion_osaxen.html)


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


