#module Shout
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end
#
#  def self.yell_happily(words)
#    "Fuck yeah," + words + "!!"
#  end
#
#end

module Shout
  def horror(monster)
    puts "Look out behind you, it's a #{monster}!!"
  end

  def excitement(phrase)
  puts "#{phrase}! " * 4
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

