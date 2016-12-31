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
