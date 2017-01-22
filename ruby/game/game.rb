# Word Guessing Game
class Game

	def initialize
		# Initialize a counter variable
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
		@empty_array = ["_ "]*length
	end

	# Check if that letter is in the word
	def check_word(word, letter)
		# Add one to the guess counter
		@guess_count += 1
		# Is the letter in the string?
		if word.include? letter
			true
		else
			# Or print guess again	
			p "Nope! Guess again!"
		end	
	end

end

# Allow the user to enter a word 
# Count the characters in the word
# Ask the next user to guess a letter
# Run the following loop until the the counter reaches the maximum length
# while @index < @word_array.length
# 	# Check if letter matches letter in index
# 	if @word_array[index] = letter
# 		# Assign letter to that index in empty array
# 		@empty_array[index] = letter
# 		# Print the letter where it is in the word, with underscores everywhere else
# 		empty_string = @empty_array.join
# 	end
# 	# Check next index in array
# 	@index += 1
# end
# If the user guesses all of the letters correctly before the limited guesses are over
	#Print a congratulations
# Or if they did not get the word
	#Print a taunting message