require 'sqlite3'


db = SQLite3::Database.new("restaurant.db")
# db.results_as_hash = true

create_table_pasta = <<-SQL
  CREATE TABLE IF NOT EXISTS pasta(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    unit_price INT
  )
SQL

create_table_sauce = <<-SQL
  CREATE TABLE IF NOT EXISTS sauce(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    unit_price INT
  )
SQL

create_table_cheese = <<-SQL
  CREATE TABLE IF NOT EXISTS cheese(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    unit_price INT
  )
SQL
  
pasta_hash = {
  name: ["penne", "rotini", "pappardelle"],
  unit_price: [1, 1.5, 2]
}

sauce_hash = {
  name: ["bolognese", "pesto", "alfredo"],
  unit_price: [2, 1, 1.5]
}

cheese_hash = {
  name: ["mozzarella", "parmesan", "fontina"],
  unit_price: [2, 1, 1.5]
}


def update_table(table, name, unit_price)
  db.execute("INSERT INTO #{table} (name, unit_price) VALUES (?, ?)", [name, unit_price])
end

ingredients_array = [pasta_hash, sauce_hash, cheese_hash]

ingredients_array.each do |table, name, unit_price|
  INSERT INTO table (name, unit_price) VALUES (?, ?), [name, unit_price]
end

db.execute(create_table_pasta)
db.execute(create_table_sauce)
db.execute(create_table_cheese)

update_table("pasta", pasta_hash[:name], pasta_hash[:unit_price])

create_ingredients_table = <<-SQL
CREATE TABLE IF NOT EXISTS ingredients(
   id INTEGER PRIMARY KEY,
   pasta_id int,
   sauce_id int,
   cheese_id int,
   FOREIGN KEY (pasta_id) REFERENCES pasta(id),
   FOREIGN KEY (sauce_id) REFERENCES sauce(id),
   FOREIGN KEY (cheese_id) REFERENCES cheese(id)
 )
 SQL









=begin

Daily inventory order
Suppliers table
- Supplier
- Item
- Unit price
- Total
- Contact info

Menu
- Dishes
- Ingredients
- Quantities per ingredient


Covers
- User enters # of covers
- Generate that many instances
- Count # of each ingredient used
- Dishes ordered * quantities per ingredient = amount sold
- Dishes ordered as % of total ordered
- Reservations for next service
- % * covers -> # of each dish -> * ingredients -> amount needed

amount needed + amount sold = amount to order

User inputs
total covers today - generates random dishes covers.times
# of dishes sold
reservations for tomorrow

Back end input
amount to order maps to supplier list (nested hash)

todays_orders = {}
10.times do |i|
  todays_orders << Order.new(pasta_hash.sample, sauce_hash.sample, cheese_hash.sample)

Create menu data structure
menu = {
  :pasta
  :sauce
  :cheese
}

Create supplier data structure
suppliers = {
  :supplier_name,
  :items_sold = {
  :ingredient = unit price
  }
  :contact_info
}
=end