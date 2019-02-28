use AppleScript version "2.4" -- Yosemite (10.10) or lateruse scripting additions(*
◸ Veritrope.com
Export All Safari Tabs to a Text File
VERSION 1.1
March 5, 2013

// UPDATE NOTICES
     ** Follow @Veritrope on Twitter, Facebook, Google Plus, and ADN for Update Notices! **

// SUPPORT VERITROPE!
     If this AppleScript was useful to you, please take a second to show your love here: 
     http://veritrope.com/support

// SCRIPT INFORMATION AND UPDATE PAGE
     http://veritrope.com/code/export-all-safari-tabs-to-a-text-file

// REQUIREMENTS
     More details on the script information page.

// CHANGELOG
    1.1  REVISED FILE NAMING METHOD
    1.0  INITIAL RELEASE

// TERMS OF USE:
     This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. 

     To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.


*)(* 
======================================
// USER SWITCHES (YOU CAN CHANGE THESE!)
======================================
*)-- NAME OF REPORT TITLEproperty report_Title : "URL List from Safari Tabs"(* 
======================================
// MAIN PROGRAM 
======================================
*)-- PREPARE THE LISTset url_list to {}set the date_stamp to ((the current date) as string)set NoteTitle to report_Title & " | " & the date_stamp-- GET TABS FROM SAFARItell application "Safari"	activate	set safariWindow to window 1	repeat with w in safariWindow		try			repeat with t in (tabs of w)				set TabTitle to (name of t)				set TabURL to (URL of t)				set TabInfo to ("" & TabTitle & return & TabURL & return & return)				copy TabInfo to the end of url_list			end repeat		end try	end repeatend tell-- CONVERT URL_LIST TO TEXTset old_delim to AppleScript's text item delimitersset AppleScript's text item delimiters to returnset url_list to (NoteTitle & return & return & return & url_list) as textset AppleScript's text item delimiters to old_delim-- CHOOSE FILE NAME FOR EXPORT -- (WRAPPING IN A FINDER FUNCTION SO THE DIALOG WORKS IN ALFRED, KM, ETC.)tell application "Finder"	activate	set save_File to choose file name with prompt "Name this file:" default name report_Title default location (path to desktop folder)end tell--WRITE THE FILEtell application "System Events"	set save_File to open for access (save_File & ".txt" as string) with write permission	try		write url_list to save_File	end try	close access save_Fileend tell