class Santa

<<<<<<< HEAD
  attr_reader :ethnicity
  attr_accessor :age, :gender, :reindeer_array

  def initialize(gender, ethnicity, age)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_array = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = age
    puts "Gender: #{gender}, Ethnicity: #{ethnicity}, Age: #{age}"
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  # getter
  #def age
  #  @age
  #end
#
  ## setter
  #def age=(new_age)
  #  @age = new_age
  #end
#
  ## getter
  #def ethnicity
  #  @ethnicity
  #end

  def celebrate_birthday
    @age = @age + 1
  end

  ## setter
  #def gender
  #  @gender
  #end
#
  ## setter
  #def gender=(new_gender)
  #  @gender = new_gender
  #end
#
  ## setter
  #def reindeer_array
  #  @reindeer_array
  #end

  def get_mad_at(bad_reindeer)
    reindeer_array.delete(bad_reindeer)
    reindeer_array.insert(-1, bad_reindeer)
  end


end

=begin
albert = Santa.new("dude-lady", "murrican")
albert.speak
albert.eat_milk_and_cookies("chocolate chip cookie")
albert.age = 30
albert.gender = "cyborg"
puts "Albert self-identifies as a #{albert.gender}."
p albert.celebrate_birthday
p albert.reindeer_array
p albert.get_mad_at("Prancer")
p albert
p albert.reindeer_array
p albert.age
p albert.ethnicity
=end

santas = []
example_genders = ["agender", "female", "bigender", "male", "lady-dude", "gender fluid", "N/A", "dude-lady"]
example_ethnicities = ["american", "murrican", "freedomese", "West Coloradoan"]

10.times do |i|
  santas << Santa.new(example_genders.sample, example_ethnicities.sample, rand(140))
end

=======
  attr_reader :age, :ethnicity
  attr_accessor :gender

 def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @reindeer_ranking = reindeer
    @age = 13
  end

 def celebrate_age
   @age = age + 1
 end

  def get_mad_at(bad_reindeer)
   @reindeer_ranking = reindeer.insert(-1,bad_reindeer)
  end
end

phil = Santa.new("female","beige")
phil.age
# can't figure out how to add in age initially
# not really clear on how the reindeer situation is supposed to work
p phil

phil.gender=("lady")
phil.celebrate_age
p phil


santas = []
genders = ["dude", "lady", "dudely lady", "ladylike dude", "honey badger"]
ethnicities = ["American", "red-blooded American", "Murrica", "Freedomese"]


300.times do |x|
  santas << Santa.new(genders.sample,ethnicities.sample)
  age = 79
end

p santas
>>>>>>> 628b4b0448c9e47470317232eab08112228a96cb
