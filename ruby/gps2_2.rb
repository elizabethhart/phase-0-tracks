# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Split string in an array by spaces to get individual items
  # Set those items as the hash keys
  # Set default quantity to value
  # print the list to the console [can you use one of your other methods here?] print the list method
# output: [what data type goes here, array or hash?] a hash

def create_list(items)
	list_array = items.split(' ')
	list_hash = {}
	list_array.each do |item|
		list_hash[item] = 1
	end
	p list_hash
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # Check to see if key is already in the list
  	# If key is in the list, add quantity to existing quantity
  	# If it isn't, then add the key to the list, and assign the value of the quantity
# output: the list with the new item added (hash)

def add_to_list(list, item, quantity=1)
	# if list.keys.include?(item)
	# 	list[item] += quantity
	# else
	# 	list[item] = quantity
	# end
	list.keys.include?(item) ? list[item] += quantity : list[item] = quantity
	# Only for if else statement (ternary)
	p list
end

# Method to remove an item from the list
# input: list, item name to remove
# steps:
  # Check to see if the key is already in the list
  	# If the key is in the list, remove the key-value pair
  	# If the key isn't there, do nothing
# output:
  # the list (hash)

def remove_item(list, item)
	# if list.keys.include?(item)
	# 	list.delete(item)
	# end
	# list.delete(item) if list.keys.include?(item)
	list.delete_if { |key, value| key == item } 
	# Destructive method
	p list
end


# Method to update the quantity of an item
# input: list, item name, and new quantity to change it to
# steps:
  # Check to see if the key is already in the list
  	# Updated the quantity
  	# Add the item and quantity as the value to the list
# output:
  # the list (hash)

def update_list(list, item, quantity)
	list[item] = quantity
	p list
end

# Method to print a list and make it look pretty
# input: list
# steps:
  # Iterate through each key value pair as a string of the form "value key"
# output:
  # Printed list

def print_list(list)
	list.each do |item,quantity|
		p "#{quantity} #{item}"
	end
end

# Driver Code

my_list = create_list("oranges apples pickles crackers")

add_to_list(my_list,"pears")

remove_item(my_list,"oranges")

update_list(my_list,"pickles",2)

print_list(my_list)

# Reflection

# What did you learn about pseudocode from working on this challenge?

	# I learned that the more detail you put into writing your pseudocode, the easier and faster it is to write your actual code. Having the input, steps, and output sections made it much easier to visualize what we wanted the code to do.

# What are the tradeoffs of using arrays and hashes for this challenge?

	# Arrays are easier to work with because they only contain one value per index, but hashes can contain more detailed information having key value pairs.

# What does a method return?

	# A method returns the output of the code written within the method.

# What kind of things can you pass into methods as arguments?

	# You can pass in strings, integers, booleans, arrays, hashes, as long as your method code is written to accept that data type/structure.

# How can you pass information between methods?

	# In this challenge we passed information between methods by using the output of a previous method in our next method, and so on.

# What concepts were solidified in this challenge, and what concepts are still confusing?

	# Iteration through hashes became much clearer to me in this challenge. Sometimes I still get confused with proper syntax when calling built in methods.







