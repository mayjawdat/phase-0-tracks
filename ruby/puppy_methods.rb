=begin

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times {|x| puts "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    human_years * 7
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end

frida = Puppy.new
p frida.fetch("ball")
frida.speak(2)
frida.roll_over
p frida.dog_years(4)

=end

class Boat

  def initialize
    puts "Building new boat..."
  end

  def speed(num)
    puts "The boat is traveling at #{num} knots."
  end

  def sink
    puts "Oh the humanity!"
  end

end


boat_array = []
while boat_array.count < 50
  boat_array << Boat.new
end

p boat_array

boat_array.each {|x| x.speed(3)}
boat_array.each {|x| x.sink}




















