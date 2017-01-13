# Change the vowels to the next vowel in the alphabet
def next_vowel(letter)
  vowels = ["a", "e", "i", "o", "u"]
  new_index = vowels.index(letter) + 1
  if new_index < vowels.length
    letter = vowels[new_index]
  else
    letter = "a"
  end
end

# Change the consonants to the next consonant in the alphabet
def next_consonant(letter)
  vowels = ["a", "e", "i", "o", "u"]
  if vowels.include?(letter.next) && letter.next.length < 2
    letter = letter.next.next
  elsif letter.next.length == 2 
    letter = "b"
  else
    letter = letter.next
  end
end

def alias_maker(first_last)
  
# Split the name into an array, with first name as the first value and last name as the last value
  first_last = first_last.downcase.split(' ')
  
# Swap the positions of the values in the array and join the two strings back into one string
  last_first = first_last.rotate.join(' ')
  
# Split the words into individual characters
  new_name = last_first.split('')
  
  # new_name.map do |letter|
  #   vowels = ["a", "e", "i", "o", "u"]
  #   if vowels.include?(letter)
  #     next_vowel(letter)
  #   else
  #     next_consonant(letter)
  #   end
  #   return new_name
  # end
  
# # Join the two strings back into one string
  new_name.join(' ')
end 

alias_maker("Felicia Torres")