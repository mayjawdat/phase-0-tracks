class Puppy
  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
   num.times {|num| puts "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(x)
    x * 7
  end

end

fancy = Puppy.new

p fancy.fetch("ball")
p fancy.speak(3)
p fancy.roll_over
p fancy.dog_years(4)

class Lion
  def initialize
      puts "Initializing new lion instance..."
  end
  
  def roar(num)
    puts "Roar!" * num
  end
  
  def jump
    puts "Jump!"
  end
end


lion_array = []
while lion_array.count < 50
lion_array << Lion.new
end

lion_array.each {|x| x.roar(2)}
lion_array.each {|x| x.jump}


