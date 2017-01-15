def alias_maker(first_last)
  
# Split the name into an array, with first name as the first value and last name as the last value
  first_last = first_last.downcase.split(' ')
  
# Swap the positions of the values in the array and join the two strings back into one string
  last_first = first_last.rotate.join(' ')
  
# Split the words into individual characters
  new_name = last_first.split('')
  
# Convert letters
  
  new_name.map! do |letter|
    vowels = ["a", "e", "i", "o", "u"]
    if vowels.include?(letter)
      new_index = vowels.index(letter) + 1
      if new_index < vowels.length
        letter = vowels[new_index]
      else
        letter = "a"
      end
    else
      if vowels.include?(letter.next) && letter.next.length < 2
        letter = letter.next.next
      elsif letter.next.length == 2 
        letter = "b"
      elsif letter.next == "!"
        letter = " "
      else
        letter = letter.next
      end
    end
  end
  
# Join the two strings back into one string

  lowercase_name = new_name.join('')

# Resplit the strings into an array
  
  uppercase_name = lowercase_name.split(' ')
  
# Capitalize the names again  
  
  uppercase_name.map! { |name| name.capitalize }
  
# Join the array back into a string
  
  return uppercase_name.join(' ')
  
end 

p alias_maker("Felicia Torres")