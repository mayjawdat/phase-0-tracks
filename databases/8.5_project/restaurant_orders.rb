
db = SQLite3::Database.new("restaurant.db")
# db.results_as_hash = true

create_table_cmd = <<-SQL
  #CREATE TABLE IF NOT EXISTS ingredients(
  #  id INTEGER PRIMARY KEY,
  #  pasta_id int,
  #  sauce_id int,
  #  cheese_id int,
  #  FOREIGN KEY (pasta_id) REFERENCES pasta(id),
  #  FOREIGN KEY (sauce_id) REFERENCES sauce(id),
  #  FOREIGN KEY (cheese_id) REFERENCES cheese(id),
  #)

  CREATE TABLE IF NOT EXISTS pasta(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    unit_price INTEGER
  )
 
  CREATE TABLE IF NOT EXISTS sauce(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    unit_price INTEGER
  )

  CREATE TABLE IF NOT EXISTS cheese(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    unit_price INTEGER
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
- Dishes ordered * quantities per ingredient = amount sold
- Dishes ordered as % of total ordered
- Reservations for next service
- % * covers -> # of each dish -> * ingredients -> amount needed

amount needed + amount sold = amount to order

User inputs
total covers today
# of dishes sold
reservations for tomorrow

Back end input
amount to order maps to supplier list (nested hash)



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
