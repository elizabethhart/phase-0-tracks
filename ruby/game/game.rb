# Word Guessing Game
class Game

	def initialize
		@guess_count = 0
		@index = 0
	end

	# Save the word
	def store(word)
		@word_array = word.split('')
	end

	# Create an array of underscores based on length of word"
	def create_empty_array(word)
		length = word.length
		@empty_array = ["_ "]
		@empty_array*length
	end

	# Run the following loop until the the counter reaches the maximum length
	# Ask the next user to guess a letter
	# Check if that letter is in the word
	# If the letter is in the word
		# Print the letter where it is in the word, with underscores everywhere else
	# Or print guess again
	# Add one to the counter variable
	def check_word(letter)
		# # Add one to the guess counter
		# @guess_count += 1
		# while @index < @word_array.length
		# 	# Check if letter matches letter in index
		# 	if @word_array[index] = letter
		# 		# Assign letter to that index in empty array
		# 		@empty_array[index] = letter
		# 	end
		# 	# Check next index in array
		# 	@index += 1
		# end		
	end

end

# Allow the user to enter a word 
# Count the characters in the word
# Initialize a counter variable based on how long the word is
# If the user guesses all of the letters correctly before the limited guesses are over
	#Print a congratulations
# Or if they did not get the word
	#Print a taunting message