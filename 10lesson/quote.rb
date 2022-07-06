# file_path = './data/quotes.txt'
# # . - текущая директория. То, откуда запускается файл. Поэтому, если мы запустим 13lesson/quote.rb, то файл не будет найден


# if File.exist?(file_path)
#   f = File.new(file_path, 'r:UTF-8')
#   lines = f.readlines
#   f.close
#   puts "Aphorism of the day is:"
#   puts lines.sample
# else
#   puts "File is not found"
# end

# ---------------------------------------------------------------------------------------------------------

current_path = File.dirname(__FILE__)
# а эта переменная хранит адрес непосредственно запускаемого файла
file_path = current_path + '/data/quotes.txt'


if File.exist?(file_path)
  f = File.new(file_path, 'r:UTF-8')
  lines = f.readlines
  f.close
  puts "Aphorism of the day is:"
  puts lines.sample
else
  puts "File is not found"
end
