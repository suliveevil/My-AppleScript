-- 获取访达窗口名称
-- tell application "Finder" to get the name of window 1

-- 报错声音
--try
--	set x to "hello" as integer
--on error
--	beep
--end try

-- 对话框
-- display dialog "嗯哼?"

--对话框 按钮
-- display dialog "Today is a good day!" buttons {"OK"}

-- 对话框
-- display dialog "Today is Tuesday. Although every day is a good day to learn more about AppleScript, Tuesdays are especially good for expanding your horizons. Keep up the good work!" buttons {"Right On!"}

--
--display dialog "Who should get the money?" buttons {"Sal", "Bill"}
--set the chosen_person to the button returned of the result
--display dialog "You chose " & the chosen_person & " to get the money!"

--
--display dialog ("Rotate the image in which direction?") ¬
--	buttons {"Cancel", "Left", "Right"}

--
--display dialog ("Translate the selected text to which language?") ¬
--	buttons {"English", "French", "German"} default button "German"


--display dialog "Continue?" buttons {"Quit", "Continue"} ¬
--	default button "Continue" cancel button "Quit"
--beep

--
--display dialog "Do you want to continue?" giving up after 5
--if gave up of the result is true then error number -128
--display dialog "OK, here we go!"

-- 图标: note/caution/stop
--display dialog "This script encountered a file naming problem. " & ¬
--	"The problem has been fixed." buttons {"OK"} default button 1 ¬
--	with icon stop

-- 用户输入
-- display dialog "Please enter your name:" default answer ""
--用户输入，默认输入
--display dialog ("Please enter your name:") ¬
--	default answer "last name, first name"

-- 输入与反馈
--display dialog "What is your name?" default answer ""
--set the user_name to the text returned of the result
--set the response_text to "Hello " & the user_name & "!"
--display dialog response_text buttons {"OK"} default button 1
-- 技巧
--display dialog ("Name the article and indicate its position.") ¬
--	default answer "" buttons {"Cancel", "Left Page", "Right Page"}
--copy the result as list to {the article_title, the article_position}

-- 请输入数字（十进制（无字母）正负数均可）
--repeat
--	display dialog "Enter a number:" default answer ""
--	try
--		if the text returned of the result is not "" then
--			set the requested_number to ¬
--				the text returned of the result as number
--			exit repeat
--		end if
--	on error
--		beep
--	end try
--end repeat

-- 请输入整数
--repeat
--	display dialog "Enter a nonfractional number:" default answer "such as 1、-1"
--	try
--		set this_text to the text returned of the result
--		if this_text is not "" then ¬
--			set the this_number to this_text as number
--		if this_number mod 1 is equal to 0 then
--			set this_number to this_number div 1
--			exit repeat
--		end if
--	on error
--		beep
--	end try
--end repeat

-- 请输入指定范围的数字
--set the low_value to 1
--set the high_value to 10
--repeat display dialog ("Enter a number between ") ¬
--	& low_value & " and " & high_value & ":" default answer "" times
--	try
--		if the text returned of the result is not "" then ¬
--			set this_number to ¬
--				the text returned of the result as number
--		if this_number is greater than or equal to low_value and ¬
--			this_number is less than or equal to high_value then
--			exit repeat
--		else
--			-- beep
--		end if
--	end try
--end repeat

-- 对话框标题
--display dialog ("Give the guy a break, please.") ¬
--	with title ("Gimme a break!") ¬
--	buttons {"Cancel", "Break"} default button "Break"
--display dialog ¬
--	"Thanks, I needed that!" buttons {"OK"} default button "OK"

--
--try
--	
--	display dialog ("Enter a number:") ¬
--		default answer ("") ¬
--		buttons {"OK"} default button "OK"
--	set user_entry to text returned of result
--	return user_entry as number
--on error
--	set alert_string to "Not a Number"
--	set message_string to ¬
--		("\"" & user_entry & "\" is not a number. ") & ¬
--		"Run the script again and use only the number keys."
--	
--	display alert alert_string message message_string ¬
--		buttons {"OK"} default button "OK" giving up after 5
--end try

-- 选择文件夹
-- set the source_folder to choose folder
-- 选择文件夹 带提示
--set the source_folder to choose folder with prompt ¬
--	"Pick the folder containing the images to process:"

-- 选择文件夹 默认打开的文件夹
--set the source_folder to ¬
--	choose folder with prompt ¬
--		("Choose the folder containing the songs to process:") ¬
--			default location (path to the home folder)

-- 选择文件夹 默认打开的文件夹 POSIX path
-- 测试中
--set the source_folder to ¬
--	choose folder with prompt ¬
--		("Choose the folder containing the songs to process:") ¬
--			default location POSIX path /Users/liveevilsu/Desktop/allmyfiles/


-- 选择多个文件夹
--set the source_folder to choose folder with prompt ¬
--	"Pick the source folders:" with multiple selections allowed

-- 在文件夹中找指定文件
--choose folder with prompt ¬
--	("Choose a Resources folder in any application package:") ¬
--		default location (path to applications folder) ¬
--	with showing package contents
--tell application "Finder"
--	count (every file of result whose name extension is "icns")
--end tell
--display dialog "Icon files in chosen folder: " & result ¬
--	buttons {"OK"} default button "OK"

--
--repeat
--	set the chosen_folder to ¬
--		choose folder with prompt ¬
--			("Choose a folder on the startup disk:") ¬
--				default location (path to the startup disk)
--	tell application "Finder"
--		if the disk of the chosen_folder is ¬
--			the startup disk then exit repeat
--	end tell
--	beep
--end repeat

-- 选取文件-带提示 包括隐藏文件
--set the target_file to choose file with prompt ¬
--	"选取示例文件" default location (path to the home folder) ¬
--	with multiple selections allowed without invisibles

-- app 图标
--choose file with prompt ¬
--	("Choose one or more icon files in any application package:") ¬
--		default location (path to applications folder) ¬
--	with multiple selections allowed and showing package contents without invisibles
--tell application "Finder"
--	repeat with a_file in result
--		if name extension of a_file is "icns" then
--			duplicate a_file to desktop with replacing
--		end if
--	end repeat
--end tell

-- 设置文件名
-- set the new_file to choose file name

-- 新建文件并编辑
--set file_ref to ¬
--	choose file name with prompt ¬
--		("Create a new file for your secret code:") ¬
--			default name "Code Book.txt"
--open for access file_ref -- creates file
--close access file_ref
--tell application "TextEdit"
--	activate
--	open file_ref
--	set text of document 1 to "Type your secret code: "
--end tell

-- 列表
--choose from list {"Sal", "Sue", "Yoshi", "Wayne", "Carle"}

-- 列表选择
-- choose from list {"Sal", "Sue", "Yoshi", "Wayne", "Carle"}
--if result is false then
--	display dialog "You didn't choose an item"
--else
--	set choice to result
--end if

-- 列表
--set the dialog_result to ¬
--	choose from list {"Sal", "Sue", "Yoshi", "Wayne", "Carla"}
--if the dialog_result is false then
--	error number -128
--else
--	set the chosen_friend to item 1 of the dialog_result
--	display dialog the chosen_friend & " is my friend too!"
--end if

--
--set the chosen_friend to ¬
--	(choose from list {"Sal", "Sue", "Yoshi", "Wayne", "Carla"}) ¬
--		as string
--if the chosen_friend is "false" then error number -128
--display dialog the chosen_friend & " is my friend too!"


-- 列表选择 按钮
-- choose from list {1, 2, 3} OK button name "Choose" cancel button name "Quit"

-- 打开指定网址
--set the website_names to ¬
--	{"ABC News", "CNN", "TIME Magazine"}
--set the website_URLs to ¬
--	{"http://www.abcnews.go.com", ¬
--		"http://www.cnn.com", ¬
--		"http://www.time.com/time/"}
--set the chosen_website to ¬
--	(choose from list website_names with prompt ¬
--		"Pick a web site to visit:") as string
--if the chosen_website is "false" then error number -128
--repeat with i from 1 to the count of the website_names
--	
--	-- determine the offset of the web site name in the names list
--	if item i of the website_names is the chosen_website then
--		
--		-- use offset to extract the corresponding URL
--		set the target_URL to item i of the website_URLs
--		
--		-- stop comparing items by exiting the repeat loop
--		exit repeat
--	end if
--end repeat
--open location the target_URL

-- 选择颜色
-- set this_color to choose color

-- 转换颜色格式 RGB2HTML
--set the HTML_tag to my RGB2HTML(choose color)
----> returns: "#FF8000"
--on RGB2HTML(RGB_values)
--	-- NOTE: this subroutine expects RGB values from 0 to 65535
--	set the hex_list to ¬
--		{"0", "1", "2", "3", "4", "5", "6", "7", "8", ¬
--			"9", "A", "B", "C", "D", "E", "F"}
--	set the hex_value to ""
--	repeat with i from 1 to the count of the RGB_values
--		set this_value to (item i of the RGB_values) div 256
--		if this_value is 256 then set this_value to 255
--		set x to ¬
--			item ((this_value div 16) + 1) of the hex_list
--		set y to ¬
--			item (((this_value / 16 mod 1) * 16) + 1) of hex_list
--		set the hex_value to (the hex_value & x & y) as string
--	end repeat
--	return ("#" & the hex_value) as string
--end RGB2HTML

-- 系统偏好设置
--tell application "System Preferences"
--	activate
--	set the current pane to pane "com.apple.preference.speech"
--end tell

-- say 如果要制定发音，需要在系统偏好设置-辅助功能-语音-系统声音-自定 中提前下载特定发音
say "Hi! I'm your computer. I've been waiting for someone to talk to!" using "Samantha"

















