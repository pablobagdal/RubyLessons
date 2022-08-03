# Напишите программу, которая показывает, сколько байт занимает в памяти компьютера целое число 42 и строка "Вася".

if Gem.win_platform?
  Encoding.default_extermal = Encoding.find(Encoding.locale_charmap)
  Encoding.default_extermal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_extermal, Encoding.default_extermal)
  end
end

puts "В числе 42 - #{42.size} байт"
puts "В строке \"Василий\" - #{"Василий".bytesize} байт"
