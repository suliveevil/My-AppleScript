BAB 自动跳窗模块 替换 PopClip.app 计划：本文件夹下的所有脚本仅适用于 BetterAndBetter.app（当前版本1.6.22）

:sunny: timestamp: 1551501933

[TOC]


* [BAB 预设脚本](#bab-预设脚本)
   * [拷贝（⌘C）](#拷贝c)
   * [粘贴（⌘V）](#粘贴v)
   * [粘贴并回车](#粘贴并回车)
   * [剪切（⌘X）](#剪切x)
   * [打开链接](#打开链接)
   * [打开目录（Open Folder）](#打开目录open-folder)
   * [网盘自动密码](#网盘自动密码)
   * [翻译](#翻译)
   * [删除（Delete）](#删除delete)
   * [重做（⌘Z）](#重做z)
   * [全选（⌘A）](#全选a)
   * [在百度中查询](#在百度中查询)
   * [在终端中执行（Run Command）](#在终端中执行run-command)
   * [在本页中查询](#在本页中查询)
* [自定义脚本](#自定义脚本)
   * [Alfred 搜索](#alfred-搜索)
   * [Eudic 欧路词典](#eudic-欧路词典)
   * [印象笔记（yinxiang）](#印象笔记yinxiang)
* [自定义脚本-test](#自定义脚本-test)
   * [Append](#append)
   * [Bing 搜索](#bing-搜索)
   * [Base64 Encode](#base64-encode)
   * [Base64 Decode](#base64-decode)
   * [HTML Encode](#html-encode)
   * [URL Encode](#url-encode)
   * [CharCount 字符统计](#charcount-字符统计)
   * [WordCount 单词统计](#wordcount-单词统计)
   * [Convert](#convert)
   * [Dash](#dash)
   * [Downie](#downie)
   * [Google Translate 谷歌翻译](#google-translate-谷歌翻译)
   * [LaunchBar](#launchbar)
   * [Open in Chrome](#open-in-chrome)
   * [Open in FireFox](#open-in-firefox)
   * [Unclutter](#unclutter)
   * [Yoink](#yoink)
   * [Sort 排序（多行文本）](#sort-排序多行文本)

---

## BAB 预设脚本

### 拷贝（⌘C）

### 粘贴（⌘V）

### 粘贴并回车

### 剪切（⌘X）

### 打开链接

### 打开目录（Open Folder）

<details>
<summary>简略版 Open Folder</summary>

```applescript
-- 需要判断文本末尾是否已经存在符号“/”，如果无，则添加
open "SelectedText"
```

</details>


### 网盘自动密码

### 翻译

### 删除（Delete）

### 重做（⌘Z）

### 全选（⌘A）

### 在百度中查询

### 在终端中执行（Run Command）

<details>
<summary>AppleScript 实现：</summary>

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

</details>


### 在本页中查询



---

## 自定义脚本

### Alfred 搜索

```applescript
tell application id "com.runningwithcrayons.Alfred-3" to search "SelectedText"
```

### Eudic 欧路词典

&nbsp;&nbsp;&nbsp;&nbsp;如果你使用的是免费版欧路词典，请将代码中的 `com.eusoft.eudic` 替换为 `com.eusoft.freeeudic`

```applescript
tell application id "com.eusoft.eudic"
	reopen
	show dic with word "SelectedText"
end tell
```

### 印象笔记（yinxiang）

```applescript
tell application "System Events"
	tell application id "com.yinxiang.Mac"
		activate
		set theNote to create note with text "SelectedText"
		open note window with theNote
	end tell
end tell
```


---

## 自定义脚本-test

### Append

### Bing 搜索

-[ ] 待补充

### Base64 Encode

### Base64 Decode

### HTML Encode

### URL Encode

### CharCount 字符统计

### WordCount 单词统计

### Convert

### Dash


### Downie

### Google Translate 谷歌翻译

### LaunchBar

### Open in Chrome

### Open in FireFox

### Unclutter

### Yoink

### Sort 排序（多行文本）

[Numerically sort clipboard contents - Questions & Suggestions - Keyboard Maestro Discourse](https://forum.keyboardmaestro.com/t/numerically-sort-clipboard-contents/11075)


<details>
<summary>pbpaste</summary>

```applescript
tell application "System Events"
	do shell script "pbpaste | sort | uniq | pbcopy"
end tell
```

</details>




