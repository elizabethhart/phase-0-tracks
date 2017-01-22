# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#   	words + "!!!" + " :)"
#   end

# end

# Driver Code

# Call method for yelling angrily
# p Shout.yell_angrily("Darn")

# Call method for yelling happily
# p Shout.yell_happily("Yay")

# Mixin module Shout
module Shout
	def yelling(words)
		puts "#{words}!!!"
	end
end

# Define two classes
class IsleyBrothers
	include Shout
end

class Mother
	include Shout
end

# Driver Code
isley_brothers = IsleyBrothers.new
isley_brothers.yelling("Put your hands up and shout")
mother = Mother.new
mother.yelling("Clean your room")