class Santa

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
