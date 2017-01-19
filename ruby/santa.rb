class Santa

	def initialize
		"Initializing Santa instance ..."
	end

	def speak
		"Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		"That was a good #{cookie_type}!"
	end

end

jolly = Santa.new

p jolly.speak
p jolly.eat_milk_and_cookies("chocolate chip cookie")