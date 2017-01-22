# Word Guessing Game
class Game
  
  attr_accessor :guess_count

	def initialize
		# Initialize a word array
		@word_array = ["s","i","m","p","l","e"]
		# Initialize an empty array
		@empty_array = ["_ ","_ ","_ ","_ ","_ ","_ "]
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
	def check_word(letter)
		# Add one to the guess counter
		@guess_count += 1
		# Is the letter in the string?
		if @word_array.include? letter
			true
		else
			false
		end	
	end

	# Assign letter to the empty array
	def assign_letter(letter)
		# Run the following loop until the the counter reaches the maximum length
		while @index < @word_array.length
			# Check if letter matches letter in index
			if @word_array[@index] == letter
				# Assign letter to that index in empty array
				@empty_array[@index] = "#{letter} "
			end
			# Check next index in array
			@index += 1
		end
		@empty_array
	end

	def array_to_string(array)
		string = array.join(' ')
		string.gsub!(/\s+/, '')
		string
	end

end

# # Driver Code

# # Initialize a new instance of class Game
# game = Game.new

# # Allow the user to enter a word 
# puts "Player 1: Please enter a word:"
# word = gets.chomp

# # Count the characters in the word
# max_guesses = word.length + 5

# puts "Player 2: You have #{max_guesses} guesses to find the correct word"
# guess_count = 0

# # Print out string of underscores representing each character
# p game.create_empty_array(word).join('')

# # Loop through game until guesses run out
# while guess_count <= max_guesses
#   # Ask the next user to guess a letter
#   puts "Player 2: Please guess a letter:"
#   letter = gets.chomp
#   game.store(word)
#   if game.check_word(letter)
#     p game.assign_letter(letter).join('')
#     game.assign_letter(letter)
#   else
#     puts "Nope! Guess again!"
#   end
#   guess_count += 1
#   guesses_left = max_guesses - guess_count
#   puts "Player 2: You have #{guesses_left} guess left"
# end

# If the user guesses all of the letters correctly before the limited guesses are over
# 	Print a congratulations
# Or if they did not get the word
# 	Print a taunting message