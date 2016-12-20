
# Release 1

# hash
animal_list = {
  "cats" => "meow",
  "dogs" => "woof",
  "bunnies" =>"hippity-hop",
  "goldfish"=> "blub blub"}

# array
safari_animals  = ["giraffe", "hippo", "lion", "rhino"]

puts animal_list
puts safari_animals


puts animal_list
animal_list.each { |house_animal, sound| 
puts "My #{house_animal} make a #{sound} sound."}
puts animal_list

puts safari_animals
safari_animals.each { |animal| 
puts "Today on my safari, I saw a #{animal}!"}
puts safari_animals

puts animal_list
animal_list.map { |house_animal, sound| 
puts "My #{house_animal} make a #{sound.upcase} sound."}
puts animal_list

puts safari_animals
new_safari = safari_animals.map {|animal| animal + "!"}
puts new_safari

puts safari_animals
safari_animals.map! {|animal| animal + "!"}
puts safari_animals




# Release 2

# array
numbers = [10,20,30,40]

# hash
number_list = {
  10 => "ten",
  20 => "twenty",
  30 => "thirty",
  40 => "forty"}

# 1.
numbers.delete_if {|number| number < 20}
number_list.delete_if {|number| number < 20}

# 2.
numbers.keep_if {|number| number <= 20}
number_list.keep_if {|number| number <= 20}

# 3.
numbers.reject {|number| number <= 20}
number_list.reject {|number| number <= 20}

# 4.
numbers.drop_while {|number| number < 30}

