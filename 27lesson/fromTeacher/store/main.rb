# encoding: utf-8
#
# Программа-магазин книг и фильмов. Версия 0.5 — с классом ProductCollection,
# который умеет хранить и сортировать коллекцию любых продуктов.
#
# (с) goodprogrammer.ru
#
# Этот код необходим только при использовании русских букв на Windows
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

# Подключаем класс ProductCollection
require_relative 'lib/product_collection'
require_relative 'lib/cart'

# Создаем коллекцию продуктов, передавая методу класса from_dir путь к папке
# с подпапками films и books. ProductCollection сам знает, как там внутри лежат
# эти файлы, и сам разберется, как их оттуда считать.
collection = ProductCollection.from_dir(File.dirname(__FILE__) + '/data')

# Сортируем продукты по возрастанию цены с помощью метода sort! экземпляра
# класса ProductCollection
collection.sort!(by: :price, order: :asc)

cart = Cart.new

loop do
  collection.remove_out_of_stock!

  puts <<~COLLECTION

    Что хотите купить:

    #{collection}
    0. Выход

  COLLECTION

  print "> "

  user_input = $stdin.gets.to_i

  break if user_input == 0

  chosen_product = collection.product_by_index(user_input)

  next unless chosen_product

  cart << chosen_product

  chosen_product.amount -= 1

  puts <<~USER_CHOICE

    Вы выбрали: #{chosen_product}

    Всего товаров на сумму: #{cart.total} руб.
  USER_CHOICE
end

puts <<~TOTAL

  Вы купили:

  #{cart}

  С Вас — #{cart.total} руб. Спасибо за покупки!
TOTAL
