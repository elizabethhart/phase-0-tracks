# Define a method for converting strings to booleans

def boolean_convert(str)
	if str == "yes"
		str = true
	else
		str = false
	end
end

# Create an empty hash for client details

client_info = {

}

# Prompt user for information and save value into corresponding key

puts "What is the client's name?"
client_info[:name] = gets.chomp

puts "How old is the client?"
client_info[:age] = gets.chomp.to_i # Convert to integer

puts "How many children does the client have?"
client_info[:number_children] = gets.chomp.to_i # Convert to integer

puts "What is the client's desired decor theme?"
client_info[:decor_theme] = gets.chomp

puts "What is the client's phone number?"
client_info[:phone] = gets.chomp

puts "Does the client like lots of color? (yes/no)"
client_info[:likes_color] = boolean_convert(gets.chomp) # Convert to boolean

puts "Is the client super duper rich? (yes/no)"
client_info[:rich] = boolean_convert(gets.chomp) # Convert to boolean

# Print the hash back out to the screen

p client_info

# Give the user an opportunity to update a key

puts "Do you want to update any of the entries? (enter 'none' if done)"
response = gets.chomp

if response == "none"
	p client_info
else
	puts "What is the new value?"
	value = gets.chomp
	client_info[response.to_sym] = value
end

# Print the latest version of the hash

p client_info
