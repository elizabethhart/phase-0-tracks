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

# Loop processing code until through every employee
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
  age_2 = Time.new.year - year
  
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
  
  # Check for sunshine allergy
  puts "Please list any allergies, type \"done\" when finished."
  allergies = gets.chomp 
  
  until allergies == "done" || allergies == "sunshine"
    puts "Please list any allergies, type \"done\" when finished."
    allergies = gets.chomp
  end
  
  if allergies == "sunshine"
    puts "Probably a vampire"
  else 
    # Check to see the likelihood of being a vampire
    if name == "Drake Cula" || name == "Tu Fang"
        puts "Definitely a vampire."
    elsif age == true && (garlic || insurance)
        puts "Probably not a vampire."
    elsif age == false && (garlic != insurance)
        puts "Probably a vampire."
    elsif (garlic == false) && (insurance == false)
        puts "Almost certainly a vampire."
    else
      puts "Results inconclusive."
    end
  end  
  
  x += 1
  
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."