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

-- 提取文件夹内所有文件的文件名
--tell application "System Events"
--	tell application "Finder"
--		
--		-- generate a list of file references sorted by name/creation time/size
--		set these_items to sort (get every document file ¬
--			of the front Finder window) by size
--		
--		-- generate a list of names
--		set these_names to {}
--		repeat with i from 1 to the count of these_items
--			set the end of these_names to ¬
--				the name of (item i of these_items)
--		end repeat
--	end tell
--	
--	-- convert the list of names to a paragraph-delimited text block
--	set AppleScript's text item delimiters to return
--	set the item_list to these_names as string
--	set AppleScript's text item delimiters to {""}
--	
--	-- make a new document with the text
--	tell application "TextEdit"
--		activate
--		make new document
--		set text of document 1 to the item_list
--	end tell
--end tell

-- 提取文件夹内所有文件的文件名-倒序
--tell application "Finder"
--	
--	-- generate a list of file references sorted by size
--	set these_items to sort (get every document file ¬
--		of the front Finder window) by name
--	
--	-- reverse the order of the list of references
--	set these_items to the reverse of these_items
--	
--	-- generate a list of names
--	set these_names to {}
--	repeat with i from 1 to the count of these_items
--		set the end of these_names to ¬
--			the name of (item i of these_items)
--	end repeat
--end tell
--
---- convert the list to paragraph-delimited text
--set AppleScript's text item delimiters to return
--set the item_list to these_names as string
--set AppleScript's text item delimiters to ""
--
---- make a new outgoing message with the text
--tell application "Mail"
--	set this_message to make new outgoing message
--	tell this_message
--		set content to the item_list
--		set visible to true
--	end tell
--end tell

-- 批量创建文件夹
--tell application "Finder"
--	
--	-- get reference to folder whose contents are shown in the window
--	set the target_folder to the target of front Finder window
--	
--	-- make a set of folders, one for each month
--	set the month_titles to ¬
--		{"01 January", "02 February", "03 March", "04 April", "05 May", "06 June", "07 July", "08 August", "09 September", "10 October", "11 November", "12 December"}
--	repeat with i from 1 to 12
--		set the month_title to (item i of month_titles)
--		if not (exists folder month_title of the target_folder) then
--			make new folder at the target_folder ¬
--				with properties {name:month_title}
--		end if
--	end repeat
--	
--	-- find the documents in the folder
--	set these_files to (every document file of the target_folder)
--	
--	-- move each document to its corresponding folder
--	repeat with i from 1 to the count of these_files
--		set this_file to item i of these_files
--		set the creation_month to ¬
--			(the month of (get creation date of this_file)) as string
--		move this_file to (the first folder of the target_folder ¬
--			whose name ends with the creation_month)
--	end repeat
--end tell

-- 查看文件夹
--tell application "Finder"
--	
--	-- get reference to folder whose contents are displayed in window
--	set the target_folder to the target of front Finder window
--	
--	-- generate a list of references to folders displayed in window
--	set these_folders to every folder of the target_folder
--	
--	-- count the number of items in each folder and add to comment
--	repeat with i from 1 to the count of these_folders
--		set this_folder to item i of these_folders
--		if the name of this_folder is not "Movies" then
--			set the item_count to the count of document files ¬
--				of the entire contents of this_folder
--			set the comment of this_folder to ¬
--				(item_count & space & "images") as string
--		end if
--	end repeat
--	
--	-- make comments visible in front window
--	tell list view options of the front Finder window
--		set properties to {calculates folder sizes:false, shows icon preview:false, icon size:large icon, text size:12, uses relative dates:true, sort column:name column}
--		
--		tell column name column
--			set its width to 180
--		end tell
--		tell column comment column
--			
--			set properties to ¬
--				{index:2, sort direction:normal, width:100, visible:true}
--			
--		end tell
--	end tell
--	tell the front Finder window
--		set the current view to list view
--	end tell
--end tell












