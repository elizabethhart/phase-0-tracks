def hotels_available
	hotel1 = "Ritz Carlton"
	hotel2 = "Hilton"
	puts "Which hotel is available?"
	yield(hotel1, hotel2)
end

puts "Before the block runs"
hotels_available { |hotel1, hotel2| puts "The #{hotel1} is available. The #{hotel2} is not available."}
puts "After the block runs"

#Release 1

pets = ["dog", "cat", "snake", "bunny", "turtle"]

pets_names = {
	"dog" => "Fluffy",
	"cat" => "Delilah",
	"snake" => "Lucifer",
	"bunny" => "Bugs",
	"turtle" => "Henry"
}

p pets

pets.each do |x|
	puts "Everybody loves #{x}s!"
end

pets.map! do |x|
	p x.upcase.reverse
end

p pets

p pets_names

pets_names.each do |pet, name|
  puts "This #{pet} is named #{name}."
end

p pets_names

#Release 2

integer_array = [1, 2, 3, 4, 5]

integer_hash = {
	1 => "one",
	2 => "two",
	3 => "three",
	4 => "four",
	5 => "five",
}

# 1 

integer_array.delete_if { |x| x < 3 }

p integer_array

integer_hash.delete_if { |integer, string| string.include?("o") }

p integer_hash

# 2

integer_array.keep_if { |x| x.even? }

p integer_array

integer_hash.keep_if { |integer, string| string.length > 4 }

p integer_hash

# 3

p integer_array.select { |x| x <= 4 }

p integer_array

p integer_hash.select { |integer, string| string.include?("o") }

p integer_hash

# 4

p integer_array.drop_while { |x| x.odd? }

p integer_array

p integer_hash.reject { |integer, string| integer > 3 }

p integer_hash
















