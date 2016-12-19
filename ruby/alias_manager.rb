# get spy name
# split by names
# swap names
# split names into letter arrays
# use .next for each item in letter array
# change letter arrays into new name strings
# put names back together
# print new name



def translate_name(name)
reversed_name = name.split(' ').reverse
new_first = reversed_name[0].chars.map {|x|
 x.next
   }
new_last = reversed_name[1].chars.map {|x|
 x.next
   }
new_name = "#{new_first.join} #{new_last.join}"
end

name = ""
while name != "quit"
p "What is your real name?"
name = gets.chomp
puts translate_name("#{name}")
end
# i know that quit part doesn't work yet



def next_vowel(vowel)
  vowel_array = ["a","e","i","o","u"]
  vowel_array.each {|x| x.to_i vowel_array[x + 1]}
end




# user interface
puts "What is your real name?"
real_name = gets.chomp
until real_name == "quit"
puts spy_name(real_name)
end

final_list.each {|spy_name,real_name|
puts "#{spy_name} is actually #{real_name}"
}