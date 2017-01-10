def hotels_available
	hotel1 = "Ritz Carlton"
	hotel2 = "Hilton"
	puts "Which hotel is available?"
	yield(hotel1, hotel2)
end

puts "Before the block runs"
hotels_available { |hotel1, hotel2| puts "The #{hotel1} is available. The #{hotel2} is not available."}
puts "After the block runs"

pets = ["dog", "cat", "snake", "bunny", "turtle"]

pets_names = {
	"dog" => "Fluffy",
	"cat" => "Delilah",
	"snake" => "Lucifer",
	"bunny" => "Bugs",
	"turtle" => "Henry"
}

pets.each do |x|
	puts "Everybody loves #{x}s!"
end

pets.map! do |x|
	puts x.upcase.reverse
end

pets_names.each do |pet, name|
  puts "This #{pet} is named #{name}."
end

