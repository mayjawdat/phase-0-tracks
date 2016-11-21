# ask for name
# ask for age
# ask for year born
# garlic bread y/n
# health insurance y/n




puts "What is your name?"
name1 = gets.chomp
if name1 == "Drake Cula"
  name1 = false
elsif name1 == "Tu Fang"
  name1 = false
else
  name1 = true
end


puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
birth_year = gets.chomp
age_calc = 2016 - birth_year.to_i
if age_calc == age
  age = true
else
  age = false
end


puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
bread = gets.chomp
if bread == "y"
  bread = true
else
  bread = false
end

puts "Would you like to enroll in the company’s health insurance? (y/n)"
insurance = gets.chomp
if insurance == "y"
  insurance = true
else
  insurance = false
end

