puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp .to_i

puts "What year were you born?"
year = gets.chomp.to_i 
age_2 = 2017 - year

if age == age_2
  age = true 
else 
  age = false 
end 

def boolean_convert(str)
  if str == "yes"
    str = true 
  else 
    str = false 
  end
end 

puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
garlic = boolean_convert(gets.chomp) 

puts "Would you like to enroll in the company’s health insurance? (yes/no)"
insurance = boolean_convert(gets.chomp) 

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