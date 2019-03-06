-- Chapter 1

--
--tell application "Text Edit"
--   tell every page of document 1
--      set width of (every line box whose width < 0.25) to 0.25
--   end tell
--end tell

--Chapter 2

--Chapter 3

--
--set date_string to date string of (current date)
--set folder_name to "Desktop Archive for " & date_string
--tell application "Finder"
--	set archive_folder to make new folder at home ¬
--		with properties {name:folder_name}
--	move every file of desktop to archive_folder
--end tell

--
--current date
--date string of (current date)

--
--set date_string to date string of (current date)

--
--set date_string to date string of (current date)
--set folder_name to "Desktop Archive for " & date_string

--
--tell application "Finder"
--	make new folder
--end tell

--
--tell application "Finder"
--	make new folder at home
--end tell

--
--tell application "Finder"
--	make new folder at home with properties {name:folder_name}
--end tell

--
(*
Note: I originally tried using 'current date as text' to include the time as well,
but found that Finder gives an error as colons (e.g. "12:00:00 PM") are illegal in
file names. One solution would be to find and replace all the colons with a hyphen
(-) or period (.), but for now I'll just use the date only.
*)
-- set date_string to date string of (current date)

--Chapter 4

--wrong code
--tell application "Script Editor"
--   set script_doc to make new document with properties {name:"My Script"}
--   set text of script_doc to "say date string of (current date)"
--   compile script_doc
--   execute script_doc
--end tell

--Chapter 5

--
--tell application "TextEdit"
--	open alias "Macintosh HD:Users:liveevilsu:bab.txt"
--	get class of result
--end tell

















--Chapter 6

--Chapter 7

























