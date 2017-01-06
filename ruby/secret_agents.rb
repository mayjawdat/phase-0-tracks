  
def encrypt(input)
  index = 0
  while index < input.length
      input[index] = input[index].next!
      index += 1
  end
  puts input
end

def decrypt(input)
  counter = 0
    while counter < input.length
   value = input[counter].ord
   value = value - 1
   input[counter] = value.chr
   counter += 1
    end
  puts input
  end

puts "Would you like to encrypt or decrypt?"
answer = gets.chomp

if answer == "encrypt"
  puts "What is your password?"
  input = gets.chomp
  encrypt(input)
else
  puts "What is your password?"
  input = gets.chomp
  decrypt(input)
end
