module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
  	words + "!!!" + " :)"
  end

end

# Driver Code

# Call method for yelling angrily
p Shout.yell_angrily("Darn")

# Call method for yelling happily
p Shout.yell_happily("Yay")