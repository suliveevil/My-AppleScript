-- Chapter 13

-- repeat
--set my_list to {1, 2, 3}
--set the item_count to the number of items in my_list
--repeat with i from 1 to the item_count
--	set this_item to item i of my_list
--	if i is 1 then -- first list item
--		-- insert actions for: this_item
--	else if i is the item_count then -- last list item
--		-- insert actions for: this_item
--	else -- other list items
--		-- insert actions for: this_item
--	end if
--end repeat

-- URL Schemes
--scripteditor: action: new/insert/
-- applescript://com.apple.scripteditor?action=new&script=content

-- URL Schemes %20: space %22: "
-- &script=display%20dialog%20%22Hello!%22

-- Chapter 14

--
--tell application "AppleScript Utility"
--	set Script menu enabled to true
--end tell

-- Chapter 15

--
--property version : "1.0"
--display dialog "This script is at version " & version
--property run_count : 0
--set run_count to run_count + 1
--if run_count is 1 then
--	set count_string to "once"
--else if run_count is 2 then
--	set count_string to "twice"
--else
--	set count_string to (run_count as string) & " times"
--end if
--display dialog "This script has been run " & count_string

--全局变量
--global global_variable
--display dialog "Type a word:" default answer ""
--set answer to text returned of result
--if answer is not "" then
--	set global_variable to answer
--end if
--display dialog global_variable

--局部变量
--local local_variable
--display dialog "Type a word:" default answer ""
--set answer to text returned of result
--if answer is not "" then
--	set local_variable to answer
--end if
--display dialog local_variable

-- property
--property my_property : ""
--display dialog "Type a word:" default answer ""
--set answer to text returned of result
--if answer is not "" then
--	set my_property to answer
--end if
--display dialog my_property

-- Chapter 16

--subroutine
--on get_input()
--	display dialog ("Create or view a playlist of all the tunes") ¬
--		& (" in your iTunes library having a common theme.") ¬
--		& return & return ¬
--		& ("Enter the theme as a word or phrase:") ¬
--		default answer "" buttons {"Cancel", "View", "Create"} ¬
--		default button "Create"
--	return result
--end get_input

--
--get_input()
--display dialog "You chose " & button returned of result
--on get_input()
--	display dialog ("Create or view a playlist of all the tunes") ¬
--		& (" in your iTunes library having a common theme.") ¬
--		& return & return ¬
--		& ("Enter the theme as a word or phrase:") ¬
--		default answer "" buttons {"Cancel", "View", "Create"} ¬
--		default button "Create"
--	return result
--end get_input

-- Chapter 17

-- word count 字符统计
-- get the count of the characters of "folder"

--
-- "I love Macs." & space & "They are my favorite computers."

-- 反转字符顺序
set the char_list to every character of "汽车car.01.jpeg"
set the reversed_list to the reverse of the char_list
set the reversed_string to the reversed_list as string

--
-- set x to the offset of "." in the reversed_string
--> returns: 5
-- add 1 to compensate for the first character of the search string set x to x + 1
-- use the result as a negative offset value

--
-- text 1 thru -x of "car.01.jpeg"
--> returns: "car.01"

-- 字符替换
--set this_greeting to "Thank you [[CUST]] for trying our products!"
--set AppleScript's text item delimiters to "[[CUST]]"
--set these_items to the text items of this_greeting
--set AppleScript's text item delimiters to "Sal"
--set this_greeting to these_items as string
--set AppleScript's text item delimiters to {""}
--return this_greeting

-- 字符替换
--set this_greeting to "Thank you [[CUST]] for trying our products!"
--set this_greeting to replace_text(this_greeting, "[[CUST]]", "Bob")
--
--on replace_text(this_text, search_string, replacement_string)
--	set AppleScript's text item delimiters to the search_string
--	set the item_list to every text item of this_text
--	set AppleScript's text item delimiters to the replacement_string
--	set this_text to the item_list as string
--	set AppleScript's text item delimiters to {""}
--	return this_text
--end replace_text

--Find/Change Limitations
--set this_greeting to "Thank you [[CUST]] for trying our products!"
--set this_greeting to replace_text(this_greeting, "[[CUST]]", "Bob")
--
--on replace_text(this_text, search_string, replacement_string)
--	set AppleScript's text item delimiters to the search_string
--	set the item_list to every text item of this_text
--	set AppleScript's text item delimiters to the replacement_string
--	set this_text to the item_list as string
--	set AppleScript's text item delimiters to {""}
--	return this_text
--end replace_text
--set this_text to "Is one plus one the same as one times one?"
--set the new_string to my replace_text(this_text, "one", "two")
--set this_string to "If someone adds one plus one, what is the result?"
--my replace_text(this_string, "one", "two")

--
--tell application "Safari"
--	activate
--	-- get the URL of the front window
--	set this_URL to URL of document 1
--	set AppleScript's text item delimiters to {"/"}
--	set the image_name to the last text item of this_URL
--	set AppleScript's text item delimiters to {""}
--	set the target_path to ¬
--		((path to desktop) as string) & the image_name
--	save document 1 in file target_path
--end tell

-- 新建文件
--tell application "TextEdit"
--	activate
--	make new document at the beginning of documents
--	set the text of the front document to ¬
--		"Once upon a time in a village far far away lived a man and his dog." & return & "Every day the man and his dog would walk from their house by the ocean down to the beach." & return & "One day while strolling the sandy beach, the pair came upon a silver dollar gleaming in the afternoon sun."
--end tell

--
--tell application "TextEdit"
--	activate
--	tell the text of the front document
--		set the font to "Arial"
--		set the size to 17
--	end tell
--end tell

-- 改变大小写
--set this_string to "THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG."
---- convert to lower case
--set the changed_string to ""
--repeat with i from 1 to the length of this_string
--	set this_character to character i of this_string
--	set this_number to (ASCII number this_character)
--	if this_number is greater than or equal to 65 and ¬
--		this_number is less than or equal to 90 then
--		set this_character to (ASCII character (this_number + 32))
--	end if
--	set the changed_string to the changed_string & this_character
--end repeat
--return the changed_string

-- convert to upper case
--set this_string to "The quick brown fox jumped over the lazy dog."
--set the changed_string to ""
--repeat with i from 1 to the length of this_string
--	set this_character to character i of this_string
--	set this_number to (ASCII number this_character)
--	if this_number is greater than or equal to 97 and ¬
--		this_number is less than or equal to 122 then
--		set this_character to (ASCII character (this_number - 32))
--	end if
--	set the changed_string to the changed_string & this_character
--end repeat
--return the changed_string















