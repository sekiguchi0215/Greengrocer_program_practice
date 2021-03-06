def disp_products(products)
  puts "いらっしゃいませ！商品を選んでください。"
  products.each.with_index(1) do |product, i|
    puts "#{i}.#{product[:name]}(#{product[:price]}円)"
  end
end

def choose_product(products)
  print "商品の番号を選択 > "
  while true
    select_product_num = gets.to_i
    break if (1..4).include?(select_product_num)
    puts "1~4の番号から選んでください。"
  end
  products[select_product_num - 1]
end

def decide_quantity(chosen_product)
  puts "#{chosen_product[:name]}ですね。何個買いますか？"
  while true
    print "個数を入力 > "
    quantity_of_product = gets.to_i
    break if quantity_of_product >= 1
    puts "1個以上選んでください。"
  end
  quantity_of_product
end

def calculate_charges(chosen_product, quantity_of_product)
  total_price = chosen_product[:price] * quantity_of_product
  if quantity_of_product >= 5
    puts "５個以上なので10%割引となります。"
    total_price *= 0.9
  end
  puts "合計金額は#{total_price.floor}です。"
  puts "お買い上げありがとうございました！"
end
