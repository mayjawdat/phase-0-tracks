grocery_list = {}

def add_item(item, qty, list)
  list[item] = qty
end

add_item("apple", 1, grocery_list)
add_item("banana", 3, grocery_list)
add_item("bread", 1, grocery_list)
add_item("carrots", 2, grocery_list)

def remove_item(item, qty, list)
  list.delete(item)
  return list
end
remove_item("bread", 1, grocery_list)

def update_item(item, qty, list)
 list[item] = qty
end
update_item("carrots", 5, grocery_list)

def print_list(list)
 list.each {|name, number| puts "item: #{name}, quantity: #{number}"}
end

print_list(grocery_list)

=begin
What did you learn about pseudocode from working on this challenge?
It can save time on the overall project if you take the time in the beginning to go through it step by step.

What are the tradeoffs of using arrays and hashes for this challenge?
We didn't use arrays. We used a hash because the input came in pairs. Had to assign values for each method.

What does a method return?
Whatever you tell it to return.

What kind of things can you pass into methods as arguments?
Strings, integers, hashes, anything with the correct syntax.

How can you pass information between methods?
Using the same variables as arguments.

What concepts were solidified in this challenge, and what concepts are still confusing?
Passing info between methods. Need more practice with hashes in general.