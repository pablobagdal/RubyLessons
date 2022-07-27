# encoding: utf-8

if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

# Подключаем классы товара и классов-детей: книги и фильма
require_relative 'lib/product.rb'
require_relative 'lib/book.rb'
require_relative 'lib/film.rb'


leon = Film.from_file("#{__dir__}/data/films/01.txt")
idiot = Book.from_file("#{__dir__}/data/books/01.txt")

puts leon
puts idiot

begin
  some_product = Product.from_file("/doesn't matter what the path is here")
rescue NotImplementedError => e
  puts "You can not create object of Product this way. Try use standart constructor(Product.new())"
end
