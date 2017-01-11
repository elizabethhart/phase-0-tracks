# Define a method for converting strings to booleans

def boolean_convert(str)
	if str == "yes"
		str = true
	else
		str = false
	end
end

# Create a hash of client details
	# Keys for each item
	# Empty values to start

client_info = {
	name: "",
	age: "",
	number_children: "",
	decor_theme: "",
	phone: "",
	likes_color: "",
	rich: "" 
}

# Prompt user for information

puts "What is the client's name?"
client_info[:name] = gets.chomp

puts "How old is the client?"
client_info[:age] = gets.chomp.to_i

puts "How many children does the client have?"
client_info[:number_children] = gets.chomp.to_i

puts "What is the client's desired decor theme?"
client_info[:decor_theme] = gets.chomp

puts "What is the client's phone number?"
client_info[:phone] = gets.chomp

puts "Does the client like lots of color? (yes/no)"
client_info[:likes_color] = boolean_convert(gets.chomp)

puts "Is the client super duper rich? (yes/no)"
client_info[:rich] = boolean_convert(gets.chomp)

p client_info