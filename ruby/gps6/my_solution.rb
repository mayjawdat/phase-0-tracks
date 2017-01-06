# Virus Predictor

# I worked on this challenge with Nathan Vu.
# We spent 3 hours on this challenge.

# EXPLANATION OF require_relative
# specifies which file to look in for necessary data
# require is more universal

require_relative 'state_data'

class VirusPredictor
  # creates new instance of VirusPredictor, sets instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  # calls two other methods
  def virus_effects
    predicted_deaths
    speed_of_spread
    print "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{@speed} months.\n\n"
  end

private
  # calculates numbers of deaths using variables
  def predicted_deaths
    # predicted deaths is solely based on population density
    @number_of_deaths = (@population * factor).floor
    if @population_density >= 200
      factor = 0.4
    elsif @population_density >= 150
      factor = 0.3
    elsif @population_density >= 100
      factor = 0.2
    elsif @population_density >= 50
      factor = 0.1
    else
      factor = 0.05
    end
  end
end

  # calculates speed of spread based based on population density and rate
  def speed_of_spread
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
  end


end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do
  |state_name, population_data|
  state = VirusPredictor.new(state_name, population_data[:population_density], population_data[:population])
  state.virus_effects
  end




#=======================================================================
# Reflection Section
=begin
1. State data is using string keys, each state's respective hash is using symbol keys.
2. Require relative specifies information to be included from other files using a relative path. Files included with require are called with paths relative to current working directory, not Ruby files. Require is more universal.
3. Each, each pair, each key
4. We didn't need to pass in any parameters because the instance variables were called in the child methods and available throughout the class.
5. Using instance variables throughout a class, iterating over a hash.
=end

