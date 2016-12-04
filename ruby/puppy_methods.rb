class Puppy

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



