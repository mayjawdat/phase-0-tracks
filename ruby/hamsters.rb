

puts "What is the hamster's name?"
hamster_name = gets.chomp

puts "How loud is the hamster on a scale of 1 to 10?"
volume = gets.chomp
volume.to_i

puts "What color is the hamster?"
color = gets.chomp

puts "Is this a good candidate for adoption? (y/n)"
adoption = gets.chomp

if adoption == "y"
  adoption = true
else
  adoption = false
end

puts "Estimate hamster age?"
hamster_age = gets.chomp

if hamster_age == ""
  puts nil
else
  hamster_age.to_i
end

puts "Hamster name: #{hamster_name}"
puts "Hamster volume: #{volume}"
puts "Hamster color: #{color}"
puts "Adoption? #{adoption}"
puts "Hamster age: #{hamster_age}"


