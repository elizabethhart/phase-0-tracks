class Santa

	# Getter methods
	attr_reader :age, :ethnicity
	# Setter methods
	attr_accessor :gender

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

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeers_name)
		idx = @reindeer_ranking.find_index(reindeers_name)
		@reindeer_ranking << @reindeer_ranking[idx]
		@reindeer_ranking.delete_at(idx)
	end

end

# Driver Code
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

# jolly = Santa.new("non-binary","eurasian")

# jolly.speak
# jolly.eat_milk_and_cookies("chocolate chip cookie")
# jolly.celebrate_birthday
# jolly.get_mad_at("Vixen")
# jolly.gender = "male"

# puts "#{jolly.gender}"

# santas = []
# example_genders = ["non-binary", "female", "two-spirit"]
# example_ethnicities = ["Afrikaner", "Jewish", "Native American"]
# example_genders.length.times do |i|
# 	puts "Creating a new Santa ..."
# 	santas << Santa.new(example_genders[i], example_ethnicities[i])
# 	puts "The new Santa is #{example_genders[i]} and #{example_ethnicities[i]}!"
# end



