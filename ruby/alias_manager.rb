# Ask the user for their name

puts "What is your real name?"

# Save the string as a variable

user = gets.chomp

# Split the name into an array, with first name as the first value and last name as the last value

first_last = user.split(' ')

# Swap the positions of the values in the array and join the two strings back into one string

last_first = first_last.rotate.join(' ')

# Split the words into individual characters

new_name = last_first.split('')

# Change the vowels to the next vowel in the alphabet
# Change the consonants to the next consonant in the alphabet
# Join the two strings back into one string