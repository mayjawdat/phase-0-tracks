
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
  :dish_name,
  :ingredients = {
  :ingredient = amount
  }
}

Create supplier data structure
suppliers = {
  :supplier_name,
  items_sold = {
  :ingredient = unit price
  }
}
