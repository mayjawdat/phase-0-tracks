=begin

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    "Hell yeah, " + words + "!!"
  end

end

p Shout.yell_angrily("Grrr")
p Shout.yell_happily("mashed potatoes")

=end

module Shout
  def horror(monster)
    puts "Look out behind you, it's a #{monster}!!"
  end

  def excitement(phrase)
  puts "#{phrase}! " * 3
  end
end


class Child
  include Shout
end

class Bro
  include Shout
end


child = Child.new
child.horror("zombie")
child.excitement("Candy")

bro = Bro.new
bro.horror("feminist")
bro.excitement("Sportsball")

