# BAB 替换 PopClip 计划

本文件夹下的所有脚本仅适用于 BetterAndBetter.app（当前版本1.6.22）

timestamp: 1551493270

[TOC]

## Alfred 搜索

```applescript
tell application id "com.runningwithcrayons.Alfred-3" to search "SelectedText"
```

## Run Command

```applescript
tell application "Terminal"
	activate
	-- If there are no open windows, open one.
	if (count of windows) is less than 1 then
		do script ""
	end if
	set theTab to selected tab in first window
	do script "SelectedText" in theTab
end tell
```

## Baidu 搜索

## Base64 Encode

## Base64 Decode

## HTML Encode

## URL Encode

## Bing搜索

## CharCount

## WordCount

## Convert

## Dash

## Delete

## Downie

## Eudic

## Google Translate

## LaunchBar

## Open in Chrome

## Open in FireFox

## Unclutter

## Yoink




























