def alias_maker(first_last)
  
# Split the name into an array, with first name as the first value and last name as the last value

  first_last = first_last.split(' ')
  
# Swap the positions of the values in the array and join the two strings back into one string

  last_first = first_last.rotate.join(' ')
  
# Split the words into individual characters

  new_name = last_first.split('')
  
# Change the vowels to the next vowel in the alphabet
  vowels = ["a", "e", "i", "o", "u"]
  
  new_name.map do |letter|
    if vowels.include?(letter)
      new_index = vowels.index(letter) + 1
      letter = vowels[new_index]
    else
      letter = letter.next!
      if vowels.include?(letter)
        letter = letter.next!
      end
    end
  end
  
# Change the consonants to the next consonant in the alphabet

# Join the two strings back into one string

  new_name.join(' ')

end 

alias_maker("Elizabeth Hart")