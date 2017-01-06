puts "Would you like to decrypt or encrypt a password?"
response = gets.chomp
puts "What is the password?"
password = gets.chomp

# In order to figure out how long the string is, we would utilize the .length method on the string to determine how long the loop will be run. We would take a string inside a loop and use the .next method to keep moving to the next character until we reached the end of the string.  

def encryption_method(string)
  x = 0
  while x < string.length
    if string[x] == " "
      string[x] = " "
    elsif string[x].next == "aa"
      string[x] = "a"
    else
      string[x] = string[x].next
    end
    x += 1
  end
  return string
end

# Ask the user for a word to encrypt. Save as a variable. Create variable to alphabet. Create while look using .length to run through the length of the entire string. Calculate position of each letter in the alphabet, and subtract one from that number. 

def decryption_method(string)
  var2 = "abcdefghijklmnopqrstuvwxyz"
  x =  0 
  while x < string.length 
    new_position = var2.index(string[x]) - 1
    string[x] = var2[new_position]
    x += 1
  end
  return string
end

# decryption_method(encryption_method("swordfish"))

# p decryption_method(encryption_method("swordfish"))

# The encryption_method returns an encrypted string back into the decryption method when it is then decrypted back into the original string

if response == "encrypt"
  p encryption_method(password)
else
  p decryption_method(password)
end