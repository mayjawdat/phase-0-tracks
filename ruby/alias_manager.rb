# spy name
# split by names
# reverse
# put back together
# downcase
# set vowel hash
# find vowels
# if vowels replace with next item in array
# set consonant array
# find consonants
# if consonant replace with next item in array

vowels = ["a","e","i","o","u"]
string = "Joe Smith"
string.split(' ').reverse.join('').downcase!

def translate_char(char)
vowels = "aeiou"
if vowels.index(char)
  char
end

def translate_name(name)
#  name.split(' ').reverse.join('').downcase!

  char_index = 0
  updated_response = ""
  while char_index < name.length
    updated_response << translate_char(name[char_index])
    char_index += 1
  end
  updated_response
end

