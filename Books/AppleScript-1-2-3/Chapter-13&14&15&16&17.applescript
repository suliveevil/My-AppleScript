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






















