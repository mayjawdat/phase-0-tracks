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

  def age
    @age
  end

  def age=(new_age)
    @age = new_age
  end

  def ethnicity
    @ethnicity
  end

  def celebrate_birthday
    @age = @age + 1
  end

  def gender
    @gender
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def reindeer_array
    @reindeer_array
  end

  def get_mad_at(bad_reindeer)
    reindeer_array.delete(bad_reindeer)
    reindeer_array.insert(-1, bad_reindeer)
  end


end

albert = Santa.new("dude-lady", "murrican")
albert.speak
albert.eat_milk_and_cookies("chocolate chip cookie")
albert.age = 30
albert.gender = "cyborg"
p albert
puts "Albert self-identifies as a #{albert.gender}."
p albert.celebrate_birthday
p albert.get_mad_at("Prancer")
p albert.reindeer_array


#santas = []
#santas << Santa.new("lady-dude", "american")
#santas << Santa.new("dude-lady", "murrican")
#santas << Santa.new("princess", "freedomese")


#p santas[1]