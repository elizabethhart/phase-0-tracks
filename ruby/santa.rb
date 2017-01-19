class Santa

	def initialize(gender,ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

end

jolly = Santa.new("non-binary","eurasian")

jolly.speak
jolly.eat_milk_and_cookies("chocolate chip cookie")

santas = []
example_genders = ["non-binary", "female", "two-spirit"]
example_ethnicities = ["Afrikaner", "Jewish", "Native American"]
example_genders.length.times do |i|
	puts "Creating a new Santa ..."
	santas << Santa.new(example_genders[i], example_ethnicities[i])
	puts "The new Santa is #{example_genders[i]} and #{example_ethnicities[i]}!"
end

