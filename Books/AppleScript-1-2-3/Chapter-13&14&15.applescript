-- repeat
set my_list to {1, 2, 3}
set the item_count to the number of items in my_list
repeat with i from 1 to the item_count
	set this_item to item i of my_list
	if i is 1 then -- first list item
		-- insert actions for: this_item
	else if i is the item_count then -- last list item
		-- insert actions for: this_item
	else -- other list items
		-- insert actions for: this_item
	end if
end repeat