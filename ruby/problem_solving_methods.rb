
# Release 0
<<<<<<< HEAD

#input: array
#output: integer
#create hash
#key: number => value: count
#go through each item in array
#add to hash
#if item == number, p hash[number]

arr = [42, 89, 23, 1]

def search_array(array,number)
count = 0
while count < array.length
  index_hash = {}
  array.each do
  |x| index_hash[x] = count
    if x == number
    p index_hash[x]
    end
  count += 1
  end
end
end

search_array(arr,89)
search_array(arr,42)
=======
# We couldn't come up with the answer for this one so here are two possibilities.
# Also I was thinking about a method that converted the array into a new array that was zero-index and then used array.at on the new version.


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

def search_array(arr,number)
 arr.each {|x|
 if number == x 
   # puts index number
   hash_value={42 => 0,89 => 1,23 => 2,1 => 3}
 p hash_value[x]
 else
   p nil
 end
 }
end

search_array(arr,1)

>>>>>>> b9a036e1f2c43c3c5a0d993097cb4ff568475e0f

# Release 1

def fib(count)
array = [0,1]
  until array.length == count
    num_2 = array[-1]
    num_1 = array[-2]
    num_3 = num_1 + num_2
    array.push(num_3)
  end
  puts array.to_s
  #array.last == 218922995834555169026
end

puts fib(100)

<<<<<<< HEAD
# Release 2 - ran out of time
=======
# Release 2 - misery
>>>>>>> b9a036e1f2c43c3c5a0d993097cb4ff568475e0f
