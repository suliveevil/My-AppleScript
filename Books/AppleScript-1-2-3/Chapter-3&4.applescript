-- UNIX POSIX
--tell application "Finder"
--	get the POSIX path of (folder "Nutstore Files" of home as alias)
--end tell

--tell application "Finder"
--	get the index of folder "Applications" of the startup disk
--end tell

--System Info
-- system info

-- 唤醒 app
-- if frontmost of application "TextEdit" is false then ¬
-- activate application "TextEdit"

-- app 版本
-- get id of application "TextEdit"
--get version of application "TextEdit"

--tell application id "com.apple.TextEdit"
--	make new document
--end tell

-- 移动文件
--tell application "Finder"
--	set the current view of the front Finder window to list view
--	set this_folder to make new folder at front Finder window ¬
--		with properties {name:"Movies"}
--	move (every document file of the front Finder window ¬
--		whose kind ends with " movie") to this_folder
--end tell

-- 删除选中的文件
--tell application "Finder"
-- (无法删除系统截图)
--	delete the selection of the front Finder window
-- delete the selection
--end tell

-- 修改文件属性
--tell application "Finder"
--	tell (every document file of front Finder window ¬
--		whose name extension is "jpg")
--		set label index to 0
--		set modification date to (current date)
--		set extension hidden to true
--		set locked to false
--		set comment to "Image taken by the Hubble Space Telescope"
--		set group privileges to read write
--		set everyones privileges to read write
--	end tell
--end tell

-- 处理多个文件的文件名
--tell application "Finder"
--	set these_items to sort (get every document file ¬
--		of the front Finder window) by creation date
--	repeat with i from 1 to count of these_items
--		set this_item to item i of these_items
--		set the name of this_item to ((i as string) & "-" & ¬
--			(the name of this_item))
--	end repeat
--end tell

tell application "Finder"

	-- generate a list of file references sorted by size
	set these_items to sort (get every document file ¬
		of the front Finder window) by physical size
	
	-- generate a list of names
	set these_names to {}
	repeat with i from 1 to the count of these_items
		set the end of these_names to ¬
			the name of (item i of these_items)
	end repeat
end tell

-- convert the list of names to a paragraph-delimited text block
set AppleScript's text item delimiters to return
set the item_list to these_names as string
set AppleScript's text item delimiters to {""}

-- make a new document with the text
tell application "TextEdit"
	activate
	make new document
	set text of document 1 to the item_list
end tell















