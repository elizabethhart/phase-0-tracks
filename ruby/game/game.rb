# Word Guessing Game
class Game

  # Allow arrays to be accessible outside of the class
  attr_accessor :empty_array
  attr_accessor :word_array
  attr_accessor :string

  	# Initialize empty arrays
	def initialize
		@word_array = []
		@empty_array = []
		@guesses = []
		@string = ""
	end

	# Save the word inside of an array
	def store(word)
		@word_array = word.split('')
	end

	# Create an array of underscores based on length of word
	def create_empty_array(word)
		length = word.length
		@empty_array = ["_ "]*length
	end

	# Check if that letter is in the word
	def check_word(letter)
		if @word_array.include? letter
			true
		else
			false
		end	
	end

	# Assign letter to the empty array
	def assign_letter(letter)
	  @index = 0
		# Run the following loop until the the counter reaches the maximum length
		while @index < @word_array.length
			# Check if letter matches letter in index
			if @word_array[@index] == letter
				# Assign letter to empty array
				@empty_array[@index] = "#{letter} "
			end
			# Check next index in array
			@index += 1
		end
		# Return empty array with new letters added
		@empty_array
	end

	# Convert array to string and remove whitespace
	def array_to_string(arr)
		@string = arr.join('')
		@string = string.delete(" ")
	end

end

# Driver Code

# Allow the user to enter a word 
puts "Player 1: Please enter a word:"
word = gets.chomp

# Initialize a new instance of class Game
game = Game.new

# Count the characters in the word
max_guesses = word.length + 5

puts "Player 2: You have #{max_guesses} guesses to find the correct word"
guess_count = 0

# Print out string of underscores representing each character
p game.create_empty_array(word).join('')

# Initialize an empty guesses array
guesses = []

# Loop through game until guesses run out
while guess_count < max_guesses
  # Ask the next user to guess a letter
  puts "Player 2: Please guess a letter:"
  letter = gets.chomp
  if guesses.include? letter
  	puts "You've already guessed this letter!"
  else
  	guess_count += 1
  	guesses = guesses << letter
  	puts "You have guessed the following letters: #{guesses}"
  end
  game.store(word)
  if game.check_word(letter)
    @empty_array = game.assign_letter(letter)
    p @empty_array.join('')
  else
    puts "Nope! Guess again!"
  end
  # If the user guesses all of the letters correctly
  # !!!!!!!!This loop goes to error if the first guess is wrong?
  if game.array_to_string(@empty_array) == word
    # Print a congratulations
    puts "Congratulations you guessed the word!"
    break
  # Or if they did not get the word
  else 
    guesses_left = max_guesses - guess_count
    if guesses_left == 0 
      # Print a taunting message
      puts "No more guesses! You lost!"
    else
      puts "Player 2: You have #{guesses_left} guesses left"
    end
  end
end