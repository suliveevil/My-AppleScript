(* 
 * Safari View Source in TextMate - v1.0 - 2/21/2010
 * http://benalman.com/projects/safari-view-source-in-textmate/
 * 
 * Copyright (c) 2010 "Cowboy" Ben Alman
 * Dual licensed under the MIT and GPL licenses.
 * http://benalman.com/about/license/
 *
 * Modified Sept 1, 2010 by Donovan Chandler - simplified mktemp command
 *)tell application "Safari"	set src to source of document 1	set location to URL of document 1end tell(*
-- mktemp not accepting concatenated command --
set file_name to do shell script "echo " & quoted form of location & " | perl -pe 's/^.*\\/\\/[^\\/]%20.*\\/([^?#]*).*$/$1/'"
set file_base to do shell script "echo " & quoted form of file_name & " | perl -pe 's/\\.[^.]*$//'"
set file_ext to do shell script "echo " & quoted form of file_name & " | perl -pe 's/^(?:[^.]*\\.?|.*\\.(.*))$/$1/'"
if file_base is "" then set file_base to "file"
set extensions_to_keep to "js css txt"
if (" " & extensions_to_keep & " ") does not contain (" " & file_ext & " ") then set file_ext to "html"
set file_name_final to file_base & "." & file_ext
*)set tmp to (do shell script "mktemp /tmp/safari.XXXX")try	set handle to POSIX file tmp	open for access handle with write permission	write src to handle	close access handleon error	do shell script "curl " & quoted form of location & " -o " & quoted form of tmpend trytell application "TextMate"	activate	open tmpend tell