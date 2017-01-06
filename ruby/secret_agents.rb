# In order to figure out how long the string is, we would utilize the .length method on the string to determine how long the loop will be run. We would take a string inside a loop and use the .next method to keep moving to the next character until we reached the end of the string.  #


def encryption_method(string)
  x = 0
  while x < string.length
    if string[x] == " "
      return " "
    else 
      if string[x].next == "aa"
        return "a"
      else
        return string[x].next
      end
    end
    x += 1
  end
end

# Ask the user for a word to encrypt. Save as a variable. Create variable to alphabet. Create while look using .length to run through the length of the entire string. Calculate position of each letter in the alphabet, and subtract one from that number. #

def decryption_method(string_2)
  var2 = "abcdefghijklmnopqrstuvwxyz"
  y =  0 
  while y < string_2.length 
    new_position = var2.index(string_2[y]) - 1
    return var2[new_position]
    y += 1
  end
end

decryption_method(encryption_method("swordfish"))