class Game
  
  attr_reader :is_over, :max_guesses, :word
  attr_accessor :guess_count
  
  def initialize(word)
   	@word = word
		@empty_array = create_empty_array
		@guesses = []
		@guess_count = 0
	end
	
	def create_empty_array
		["_ "]*(@word.length)
	end
	
	def check_word(letter)
		@word.include? letter
	end
	
	def check_letter(letter)
		if @guesses.include? letter
			puts "You've already guessed this letter!"
			puts "Please guess another letter:"
			return false
		end
		@guess_count += 1
		@guesses << letter
		puts "You have guessed the following letters: #{@guesses}"
		true
	end
	
	def assign_letter(letter)
		@word.split('').each_with_index do |char,i|
			if char == letter
				@empty_array[i] = letter
			end
		end
		puts "You've guessed a letter!"
		puts "Here is your updated string:"
		puts @empty_array.join('')
	end
	
	def array_to_string(arr)
		string = arr.join("")
		string = string.delete(" ")
	end
	
	def check_if_done
		if array_to_string(@empty_array) == @word
			# Print a congratulations
			puts "Congratulations you guessed the word!"
			return true
		else 
			guesses_left = (@word.length + 3) - @guess_count
			if guesses_left == 0 
		    # Print a taunting message
		    puts "No more guesses! You lost!"
		    return true
		  end
	  	end
	  	puts "Player 2: You have #{guesses_left} guesses left"
		false
	end
  
end

puts "Player 1: Please enter a word:"
word = gets.chomp

game = Game.new(word)

game.create_empty_array

puts "Player 2: You have #{game.word.length + 3} guesses to find the correct word"

puts "Player 2: Please guess a letter:"
letter = gets.chomp 

until game.check_if_done
  if game.check_word(letter)
  	game.check_letter(letter)
    if game.check_letter(letter)
      game.assign_letter(letter)
      if game.check_if_done
        break
      else
        puts "Please guess a letter:"
        letter = gets.chomp
      end
    end
  else
    game.guess_count += 1
    game.check_if_done
    if game.is_over
      break
    else
      puts "Please guess a letter:"
      letter = gets.chomp
    end
  end
end