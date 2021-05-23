products = [
  { name: "トマト", price: 100 },
  { name: "きゅうり", price: 200 },
  { name: "玉ねぎ", price: 300 },
  { name: "なす", price: 400 },
]

puts "いらっしゃいませ！商品を選んでください。"
products.each.with_index do |product, i|
  puts "#{i}.#{product[:name]}(#{product[:price]}円)"
end

print "商品の番号を選択 > "
select_product_num = gets.to_i

chose_product = products[select_product_num - 1]
