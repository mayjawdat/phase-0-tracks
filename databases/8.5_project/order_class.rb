class Order

  attr_reader :pasta, :sauce, :cheese

  def initialize(pasta, sauce, cheese)
    @pasta = pasta
    @sauce = sauce
    @cheese = cheese
  end

end


pastas = ["penne", "rotini", "pappardelle"]
sauces = ["bolognese", "pesto", "alfredo"]
cheeses = ["mozzarella", "parmesan", "fontina"]


todays_orders = []
3.times do |i|
  todays_orders << Order.new(pastas.sample, sauces.sample, cheeses.sample)
end

p todays_orders

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
