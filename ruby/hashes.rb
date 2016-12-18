# Create hash: name, age, number of children, decor theme, and so on
# Ask for answers
# Print hash w/answers
# Ask what category to update (key or none)
# Print updated version of hash
# Exit


designer_form = {
  :name => [],
  :age => [],
  :no_of_children => [],
  :decor_theme => [],
  :rooms_count => [],
  :deposit_paid => []
}

puts "Enter client name:"
designer_form[:name] = gets.chomp

puts "Enter age:"
designer_form[:age] = gets.chomp

puts "Enter number of children:"
designer_form[:no_of_children] = gets.chomp

puts "Enter decor theme:"
designer_form[:decor_theme] = gets.chomp

puts "Enter number of rooms:"
designer_form[:rooms_count] = gets.chomp

puts "Has the deposit been paid?"
designer_form[:deposit_paid] = gets.chomp
if designer_form[:deposit_paid] == "yes"
  designer_form[:deposit_paid] = true
else
  designer_form[:deposit_paid] = false
end

puts "Please review your input."
puts designer_form

puts "Which section would you like to update?"
section = gets.chomp
if section != "none"
  puts "Enter new #{section}:"
  answer = gets.chomp
  designer_form[section.to_sym] = "#{answer}"
end

puts designer_form