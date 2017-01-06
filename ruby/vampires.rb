# Method to convert yes/no responses to booleans
def boolean_convert(str)
  if str == "yes"
    str = true 
  else 
    str = false 
  end
end 

# User interface

puts "How many employees will be processed?"
count = gets.chomp.to_i 

x = 0

while x < count

  puts "What is your name?"
  name = gets.chomp
  
  puts "How old are you?"
  # Converting string response to integer 
  age = gets.chomp .to_i
  
  puts "What year were you born?"
  # Converting string response to integer 
  year = gets.chomp.to_i 
  # Converting birth year to age
  age_2 = 2017 - year
  
  # Check to see that the ages match
  if age == age_2
    age = true 
  else 
    age = false 
  end 
  
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
  garlic = boolean_convert(gets.chomp) 
  
  puts "Would you like to enroll in the company’s health insurance? (yes/no)"
  insurance = boolean_convert(gets.chomp) 
  
  puts "Please list any allergies, type \"done\" when finished."
  allergies = gets.chomp 
  until allergies == "done" || allergies == "sunshine"
    puts "Please list any allergies, type \"done\" when finished."
    allergies = gets.chomp
  end

  # Check to see the likelihood of being a vampire
  if age == true && (garlic || insurance)
    if name == "Drake Cula" || name == "Tu Fang"
      puts "Definitely a vampire."
    else
      puts "Probably not a vampire."
    end
  elsif age == false && (garlic == false || insurance == false)
    if garlic == false && insurance == false
      puts "Almost certainly a vampire."
    else 
      puts "Probably a vampire."
    end
  else
    puts "Results inconclusive."
  end
    
  x += 1
  
end