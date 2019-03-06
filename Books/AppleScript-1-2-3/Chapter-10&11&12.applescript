-- repeat
--set counter to 0
--repeat 10 times
--	set counter to counter + 1
--end repeat
--return counter

-- repeat(Forever)
--set counter to 0
--repeat
--	set counter to counter + 1
--end repeat
--return counter

-- repeat
--set counter to 0
--repeat
--	set counter to counter + 1
--	if counter is 12 then return counter
--end repeat

--repeat until
--set counter to 0
--repeat
--	set counter to counter + 1
--	if counter is 15 then exit repeat
--end repeat
--return counter

--
--set counter to 0
--repeat
--	set counter to counter + 1
--	if counter mod 2 is 0 then
--		if counter is greater than 8 then return counter
--	end if
--end repeat

-- repaet & display dialog
--display dialog "Make three wishes."
--repeat 3 times
--	display dialog "I wish that..." default answer ""
--end repeat
--display dialog ("Just fooling!") ¬
--	buttons {"Too Bad"} default button "Too Bad"

--
--set my_list to {"one", "two", "three"}
--repeat length of my_list times
--	beep
--	delay 1
--end repeat

--
--set my_list to {"one", "two", "three"}
--set counter to 1
--repeat length of my_list times
--	beep counter
--	set counter to counter + 1
--	delay 1
--end repeat

-- repeat n times
--set x to 3
--repeat with counter from 1 to x
--	set x to 1
--	beep
--	delay 1
--end repeat
--return counter

--
--set employees to {"Bob", "Ted", "Carol", "Alice"}
--repeat with employee in employees
--	set employee to contents of employee
--	if employee is "Carol" then beep
--end repeat
--return employee

--
--set employees to {"Bob", "Ted", "Carol", "Alice"}
--repeat with employee in employees
--	set employee to contents of employee
--	if employee is first item of employees then
--		display dialog "First: " & employee
--	else if employee is last item of employees then
--		display dialog "Last: " & employee
--	end if
--end repeat

-- Chapter 12

--
--display dialog "Click Cancel and watch what happens."
--beep
--display dialog ("You just saw a try block at work.") ¬
--	buttons {"OK"} default button "OK" -- you never get here!

--
--repeat
--	try
--		display dialog ("Divide 100 by any number:") ¬
--			default answer ("") ¬
--			buttons {"OK"} default button "OK"
--		set answer to 100 / (text returned of result as number)
--		display dialog "The answer is: " & answer ¬
--			& return & return & "Try again?"
--	on error
--		return
--	end try
--end repeat

--repeat
--	try
--		try
--			display dialog ("Divide 100 by any number:") ¬
--				default answer ("")
--			set answer to 100 ¬
--				/ (text returned of result as number)
--			display dialog "The answer is: " & answer ¬
--				& return & return & "Try again?"
--		on error number -128
--			return
--		end try
--	end try
--end repeat

--
--set winner to 7
--display dialog "Pick a number:" default answer ""
--set answer to text returned of result
--try
--	set whole_number to answer as integer
--on error
--	error answer & " is not a number." number 901
--end try
--if whole_number is less than winner then
--	error answer & " is too low." number 902
--else if whole_number is greater than winner then
--	error answer & " is too high." number 903
--else
--	display dialog "You win!" buttons {"OK"} default button "OK"
--end if

--
--set winner to 7
--try
--	display dialog "Pick a number:" default answer ""
--	set answer to text returned of result
--	try
--		set whole_number to answer as integer
--	on error
--		error answer & " is not a number." number 901
--	end try
--	if whole_number is less than winner then
--		error answer & " is too low." number 902
--	else if whole_number is greater than winner then
--		error answer & " is too high." number 903
--	else
--		display dialog ("You win!") ¬
--			buttons {"OK"} default button "OK"
--	end if
--on error error_message number error_number
--	display dialog error_message & space ¬
--		& "Consult ref #" & error_number & ", then try again!"
--end try

-- 计算年龄
--try
--	-- initialize
--	set script_error_prefix to "An error occurred: "
--	set user_error_prefix to "Your answer can't be right. "
--	set user_disqualified_prefix to "I'm sorry, you don't qualify."
--	-- introduction
--	display dialog ("Welcome to Jobs 'R Us.") ¬
--		& return & return ¬
--		& ("I'll begin by asking you about yourself.") ¬
--		& (" Shall we get started?")
--	--get birth date
--	repeat
--		try
--			display dialog ("What year were you born?") ¬
--				default answer ""
--			set answer to text returned of result
--			set birth_year to answer as integer
--			exit repeat
--		on error number -1700
--			display alert script_error_prefix ¬
--				message ("You must enter a number.")
--		end try
--	end repeat
--	set this_year to year of (current date)
--	if birth_year < (this_year - 65) then
--		error user_disqualified_prefix number 5001 -- too old
--	else if birth_year > this_year then
--		error user_error_prefix number 5002 -- future date
--	else if birth_year > (this_year - 18) then
--		error user_disqualified_prefix number 5003 -- too young
--	end if
--	-- get current age
--	repeat
--		try
--			display dialog ("How old are you?") ¬
--				default answer ""
--			set answer to text returned of result
--			set current_age to answer as integer
--			exit repeat
--		on error number -1700
--			display alert script_error_prefix ¬
--				message ("You must enter a number.")
--		end try
--	end repeat
--	if current_age is not equal to (this_year - birth_year) then
--		error user_error_prefix number 5004
--	end if
--	-- conclusion
--	display dialog ("Congratulations. You're hired!") ¬
--		buttons {"OK"} default button "OK"
--on error error_message number error_number
--	if error_number is -128 then
--		-- user cancelled
--		display dialog ("'Bye. Return again soon!") ¬
--			buttons {"OK"} default button "OK"
--		return
--	else if error_number > 5000 and error_number ≤ 5004 then
--		-- user error
--		if error_number is 5001 then -- too old
--			set full_message to error_message ¬
--				& return & return ¬
--				& ("We don't hire people over 65.")
--		else if error_number is 5002 then -- not yet born
--			set full_message to error_message ¬
--				& return & return ¬
--				& (birth_year & " is in the future.") ¬
--				& (" We don't hire time travelers.")
--		else if error_number is 5003 then -- too young
--			set full_message to error_message ¬
--				& return & return ¬
--				& ("We don't hire people under 18.")
--		else if error_number is 5004 then -- wrong age
--			set full_message to error_message ¬
--				& return & return ¬
--				& ("Your real age is ") ¬
--				& this_year - birth_year ¬
--				& (". We don't hire people who can't count.")
--		end if
--		display dialog full_message & (" Go away!") ¬
--			buttons {"OK"} default button "OK"
--	else
--		-- unexpected error
--		display dialog ("An unexpected error occurred.") ¬
--			& return & return ¬
--			& ("Sorry, but we'll have to stop for now.") ¬
--			buttons {"OK"} default button "OK"
--	end if
--end try















