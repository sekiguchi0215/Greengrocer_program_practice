require "./product_class.rb"
require "./greengrocer_class.rb"
require "./user_class.rb"
require "pry"

product_params = [
  { name: "トマト", price: 100 },
  { name: "きゅうり", price: 100 },
  { name: "玉ねぎ", price: 100 },
  { name: "なす", price: 100 },
]

greengrocer = Greengrocer.new(product_params)

adding_product_params = [
  { name: "ごぼう", price: 250 },
  { name: "れんこん", price: 350 },
  { name: "じゃがいも", price: 150 },
]

greengrocer.register_product(adding_product_params)

user = User.new

greengrocer.disp_products

user.choose_product(greengrocer.products)

greengrocer.ask_quantity(user.chosen_product)

user.decide_quantity
# binding.pry

greengrocer.calculate_charges(user.chosen_product, user.quantity_of_product)
