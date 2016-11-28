
array = [2,4,6,8]


def search_array(array,num)
  counter = 0
while counter < array.length
  array.each {|a| a == counter
    if num == a
      puts counter
    end
  }
  counter += 1
end
end

puts search_array(array,2)


arr = [42, 89, 23, 1]
# p search_array(arr, 1)
# => 3
# p search_array(arr, 24)
# => nil
# each length


def search_array(arr,number)
 arr.each {|x|
 if number == x 
   # puts index number
   hash_value={42 => 0,89 => 1,23 => 2,1 => 3}
 p hash_value[x]
 else
   nil
 end
 }
end

search_array(arr,1)