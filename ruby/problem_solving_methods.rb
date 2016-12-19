
# Release 0

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

# Release 2 - misery
