def hotels_available
	hotel1 = "Ritz Carlton"
	hotel2 = "Hilton"
	puts "Which hotel is available?"
	yield(hotel1, hotel2)
end

hotels_available { |hotel1, hotel2| puts "The #{hotel1} is available. The #{hotel2} is not available."}