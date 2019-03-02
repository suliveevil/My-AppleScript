# BAB 替换 PopClip 计划

本文件夹下的所有脚本仅适用于 BetterAndBetter.app（当前版本1.6.22）

timestamp: 1551493270

[TOC]

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

## 自定义脚本

### Alfred 搜索

```applescript
tell application id "com.runningwithcrayons.Alfred-3" to search "SelectedText"
```

### Eudic 欧路词典

如果你使用的是免费版欧路词典，请将代码中的 `com.eusoft.eudic` 替换为 `com.eusoft.freeeudic`

```applescript
tell application id "com.eusoft.eudic"
	reopen
	show dic with word "SelectedText"
end tell
```

### Bing 搜索

### Base64 Encode

### Base64 Decode

### HTML Encode

### URL Encode

### Sort 排序（多行文本）

### CharCount 字符统计

### WordCount 单词统计

### Convert

### Dash

### Append

### Downie

### Google Translate 谷歌翻译

### LaunchBar

### Open in Chrome

### Open in FireFox

### Unclutter

### Yoink




