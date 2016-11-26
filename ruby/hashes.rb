

# Create hash: name, age, number of children, decor theme, and so on
# Ask for answers
# Print hash w/answers
# Ask what category to update (key or none)
# Print updated version of hash
# Exit

designer_form = {
  :name => [],
  :age => [],
  :children => [],
  :theme => [],
  :rooms => [],
  :deposit_pd => [] 

}

puts "What is the client's name?"
designer_form[:name] = gets.chomp

puts "What is the client's age?"
designer_form[:age] = gets.chomp

puts "How many children does the client have?"
designer_form[:children] = gets.chomp

puts "What theme is the client interested in?"
designer_form[:theme] = gets.chomp

puts "How many rooms does the client want decorated?"
designer_form[:rooms] = gets.chomp

puts "Has the client paid a deposit? (yes or no)"
designer_form[:deposit_pd] = gets.chomp
if designer_form[:deposit_pd] == "yes"
  designer_form[:deposit_pd] = true
end

puts "Please review your answers:"
puts designer_form

puts "Which section would you like to update?"
section = gets.chomp
if section != "none"
  puts "Enter new #{section}:"
  answer = gets.chomp
  designer_form[section.to_sym] = "#{answer}"
end


puts designer_form
