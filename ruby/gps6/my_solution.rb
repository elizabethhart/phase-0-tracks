# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative allows access to the contents of another file in your current directory without having to copy all of the code over
# Require requires a relative link to another folder (if the file is in another directory)
require_relative 'state_data'

class VirusPredictor
  attr_reader :state, :population, :population_density

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Creates 3 instance variables for state, population, and population_density and assigns it the parameters. 

  # private
  # Calling this method here does not allow the methods below it to be read, so it results in an error.

  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  # Calls predicted_deaths and speed_of_spread methods using the instance variables from the initialize method. 

  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    if population_density >= 200
      number_of_deaths = (population * 0.4).floor
    elsif population_density >= 150
      number_of_deaths = (population * 0.3).floor
    elsif population_density >= 100
      number_of_deaths = (population * 0.2).floor
    elsif population_density >= 50
      number_of_deaths = (population * 0.1).floor
    else
      number_of_deaths = (population * 0.05).floor
    end

    print "#{state} will lose #{number_of_deaths} people in this outbreak"

  end
  # Calculates how many deaths there will be by assessing the population_density and calculating the population. 

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if population_density >= 200
      speed += 0.5
    elsif population_density >= 150
      speed += 1
    elsif population_density >= 100
      speed += 1.5
    elsif population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end
  # Accepts population_density and state parameters. If/else using population_density to determine how fast the virus will spread as the variable speed. 

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

::STATE_DATA.each do |state, population_data|
  state = VirusPredictor.new(state, population_data[:population_density], population_data[:population])
  state.virus_effects
end
#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?

  # You can either use a string or a symbol for you key in a hash. Symbols are beneficial for saving memory, and a symbol for repeating values in your code.

# What does require_relative do? How is it different from require?

  # Require_relative allows access to the contents of another file in your current directory without having to copy all of the code over.
  # Require requires a relative link to another folder (if the file is in another directory).

# What are some ways to iterate through a hash?

  # .each or .map

# When refactoring virus_effects, what stood out to you about the variables, if anything?

  # The variables are unnecessary in virus_effects because the method only calls other methods, and does not use variables itself.

# What concept did you most solidify in this challenge?

  # Using attr_reader for getter methods for variables, and using instance variables inside the class.