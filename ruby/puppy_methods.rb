class Puppy

 def fetch(toy)
   "I brought back the #{toy}!"
   toy
 end

 def speak(num)
    "Woof! " * num
 end

 def roll_over
     "*rolls over*"
 end

 def dog_years(i)
     age = i * 7
     age
 end

 def shake
     "lifts paw"
 end

 def initialize
     puts "Initializing new puppy instance ..."
 end

end

spot = Puppy.new

p spot.fetch("ball")
p spot.speak(3)
p spot.roll_over()
p spot.dog_years(10)
p spot.shake()

