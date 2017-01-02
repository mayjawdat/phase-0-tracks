# ask for name
# ask for age
# ask for year born
# garlic bread y/n
# health insurance y/n

# ask for number of employees to be processed
puts "How many employees will be processed?"
answer = gets.chomp.to_i

employees = 0
while employees < answer

# ask for name
puts "What is your name?"
name1 = gets.chomp
if name1 == "Drake Cula"
  name1 = false
elsif name1 == "Tu Fang"
  name1 = false
else
  name1 = true
end

# ask for age
puts "How old are you?"
age = gets.chomp.to_i

# ask for year born
puts "What year were you born?"
birth_year = gets.chomp
age_calc = 2016 - birth_year.to_i
if age_calc == age
  age = true
else
  age = false
end

# garlic bread y/n
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
bread = gets.chomp
if bread == "y"
  bread = true
else
  bread = false
end

# insurance y/n
puts "Would you like to enroll in the company’s health insurance? (y/n)"
insurance = gets.chomp
if insurance == "y"
  insurance = true
else
  insurance = false
end

=begin

I could not figure this part out for the life of me.

# ask about allergies
allergies = ""
  
  puts "Please name any allergies and enter 'done' when finished."
  allergies = gets.chomp
  until allergies == "done"
  
    if allergies == "sunshine"
      sunshine_allergy = false
    else
      sunshine_allergy = true 
    end
  end

=end

#results
if name1 == false
  puts "Definitely a vampire."
elsif
  age && (bread || insurance)
  puts "Probably not a vampire."
elsif !age && (!bread || !insurance)
  puts "Probably a vampire."
else
  puts "Results inconclusive."
end

employees += 1

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

