# encoding: utf-8

if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

# Подключаем классы товара и классов-детей: книги и фильма
# require_relative 'lib/basket.rb'
require_relative 'lib/product_collection'


product_collection = ProductCollection.from_dir('data/')
puts product_collection.to_a

# basket = Basket.new({"lemonade": 100, "apple": 20, "juice": 30})
# puts basket

