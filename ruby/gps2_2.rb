# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create empty hash
  # convert string to array of items
  # iterate through each item in array 
  #    add item to hash as key
  #    add quantity as value
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # add item/key to list hash and quantity/value
# output: hash

# Method to remove an item from the list
# input: list, item
# steps: delete key and value from list
# output: hash

# Method to update the quantity of an item
# input: list, item, integer
# steps: replace quantity value in hash with new value
# output: hash

# Method to print a list and make it look pretty
# input: list
# steps: iterate through list and print out each key/value pair
# output: string using  \n for line breaks


list_of_items = ""
grocery_list = {}

def create_list(list_hash,initial_items)
initial_items.split(' ').each  do |item|
  list_hash[item] = 1
  end
end

def add_item(list_hash, new_item, quantity)
  list_hash[new_item] = quantity
end

def remove_item(list_hash,item)
  list_hash.delete(item)
end

def update_qty(list_hash, item, new_qty)
  list_hash[item] = new_qty
end

def print_list(list_hash)
  list_hash.each do |item, number|
    puts "Item: #{item}, Quantity: #{number}"
  end
end

create_list(grocery_list,list_of_items)
add_item(grocery_list, "lemonade", 2)
add_item(grocery_list, "tomatoes", 3)
add_item(grocery_list, "onions", 1)
add_item(grocery_list, "ice cream", 4)
remove_item(grocery_list, "lemonade")
update_qty(grocery_list, "ice cream", 1)
print_list(grocery_list)



