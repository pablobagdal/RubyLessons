# encoding: utf-8

if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

# Подключаем классы товара и классов-детей: книги и фильма
require_relative 'lib/product_collection'
require_relative 'lib/cart'

collection = ProductCollection.from_dir('data/')
#collection.sort!(by: :title, order: :asc)

# collection.to_a.each do |product|
#   puts product
# end

cart = Cart.new

loop do
  collection.remove_out_of_stock!

  print <<~COLLECTION
    Что хотите купить:

    #{collection}
    0. Выход

  COLLECTION

  user_input = $stdin.gets.to_i

  break if user_input.zero?

  choosen_product = collection.product_by_index(user_input)

  next unless choosen_product

  cart << choosen_product

  choosen_product.amount -= 1

  print <<~USER_CHOISE
    Вы выбрали: #{choosen_product}

    Всего товаров на сумму: #{cart.total} руб.
  USER_CHOISE

end

print <<~TOTAL
  Вы купили:
  #{cart}
  С вас #{cart.total} руб. Спасибо за покупки!
TOTAL

