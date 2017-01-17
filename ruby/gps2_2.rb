# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Split string in an array by spaces to get individual items
  # Set those items as the hash keys
  # Set default quantity to value
  # print the list to the console [can you use one of your other methods here?] print the list method
# output: [what data type goes here, array or hash?] a hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # Check to see if key is already in the list
  	# If key is in the list, add quantity to existing quantity
  	# If it isn't, then add the key to the list, and assign the value of the quantity
# output: the list with the new item added (hash)

# Method to remove an item from the list
# input: list, item name to remove
# steps:
  # Check to see if the key is already in the list
  	# If the key is in the list, remove the key-value pair
  	# If the key isn't there, do nothing
# output:
  # the list (hash)

# Method to update the quantity of an item
# input: list, item name, and new quantity to change it to
# steps:
  # Check to see if the key is already in the list
  	# Updated the quantity
  	# Add the item and quantity as the value to the list
# output:
  # the list (hash)

# Method to print a list and make it look pretty
# input: list
# steps:
  # Iterate through each key value pair as a string of the form "value key"
# output:
  # Printed list