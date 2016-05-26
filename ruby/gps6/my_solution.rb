# Paired with Caitlin Johnson, Guide: Charlotte Manetta


# Virus Predictor

# I worked on this challenge with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
# links to the relative state_data information in separate ruby file
# require_relative 'state_data'

class VirusPredictor

# initializes each instance variable  
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  

# method that calls on other instance methods predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  
private
# method that calculates the number of deaths directly related to population density based on a set percentage of death rate
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when 150..200 
         number_of_deaths = (@population * 0.4).floor
    when 100..149
         number_of_deaths = (@population * 0.3).floor
    when 99..50
         number_of_deaths = (@population * 0.1).floor
    else
        number_of_deaths = (@population * 0.05).floor
    end
    
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# method that calculates the speed of spread of virus in months based on population density and set speed integral 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 2.5

     case @population_density 
     when 200..150
      speed += 0.5
     when 149..100
      speed += 1
     when 99..50
      speed += 1.5
     else 
      speed 
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# state = VirusPredictor.new
STATE_DATA.each do |state_name, demographics|  
  state = VirusPredictor.new(state_name, demographics[:population_density], demographics[:population])
  state.virus_effects
end


# array = ["banana", "appple", "bacon"]

# p array[0].reverse

# array.each do |food|
#   p food.reverse 
# end

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
  # One uses a string for the key, the inner hash uses the symbol to represent the key
# What does require_relative do? How is it different from require?
  # require relative accesses file in same location;
# What are some ways to iterate through a hash?
  # .each or .map
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # there was alot of repetition using if/else statements. Changed to case, which simplified and looks much cleaner
# What concept did you most solidify in this challenge?
  # in addition to iterating over nested hash, learned how to refactor better and make code more readable