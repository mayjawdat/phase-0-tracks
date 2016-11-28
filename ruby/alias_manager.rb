# spy name
# split by names
# reverse
# put back together
# downcase
# set vowel hash?
# find vowels
# if vowels replace with next item in array
# set consonant array
# find consonants
# if consonant replace with next item in array

vowels = ["a","e","i","o","u"]
string = "Joe Smith"
char = string.split('').reverse.downcase
#  name.split(' ').reverse.join('').downcase!

def translate_char(char)
char.split('').reverse.downcase
vowels = ["a","e","i","o","u"]
# something in here to see if any of the elements of char are in the vowels array
# if so find out the index of the element in the vowels array
# convert index to integer
# add 1
# get vowel at new index
# new vowel = vowels.values_at("#{vowel}")
end

# or possibly vowels = {a: e, e: i, i: o, o: u, u: a}
# vowels[vowel input]

def translate_name(name)
  char_index = 0
  while char_index < name.length
    puts name[char_index]
    char_index += 1
  end
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