# encoding: utf-8
#
# Программа-магазин книг и фильмов. Версия 0.1 — заготовка.
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

# Подключаем классы товара и классов-детей: книги и фильма
require_relative 'lib/product.rb'
require_relative 'lib/book.rb'
require_relative 'lib/film.rb'

# Пока функционал у нас очень простой, но фильм мы создать уже можем. Создадим
# новый товар — фильм за 990 рублей, и скажем, на складе их осталось 5 штук.
leon = Film.new(price: 990, amount: 5, name: "Leon", director: "Luc Besson", year: "1994")
idiot = Book.new(price: 990, amount: 5, name: "Idiot", genre: "Novel", author: "Dostoevskiy")
# Просто чтобы не скучать выведем это в консоль
# puts "Фильм Леон стоит #{leon.price} руб."

puts leon
puts idiot
