class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_array = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

end

#albert = Santa.new
#albert.speak
#albert.eat_milk_and_cookies("chocolate chip cookie")

santas = []
santas << Santa.new("lady-dude", "american")
santas << Santa.new("dude-lady", "murrican")
santas << Santa.new("princess", "freedomese")


p santas[1]