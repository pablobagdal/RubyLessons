puts"Маша и Гоша".include?("Маша")
puts"Маша и Гоша".include?("Саша")

# выводит слово либо nil
puts"Маша и Гоша".match(/Гоша/)
puts"Маша и Гоша".match(/Cash/)
# выводит позицию либо nil
puts"Маша и Гоша" =~ /Гоша/
puts"Маша и Гоша" =~ /Cash/

puts"Маша и Гоша".index("Гоша")

# . - любой символ
puts"Маша и Гоша".match(/Г..а/)
# ^ - обязательно начало
puts"Маша и Гоша".match(/^Гоша/)
# $ - обязательно конец
puts"Маша и Гоша".match(/Гоша$/)
# * - от 0 до бесконечности предыдущего символа
puts"Маша и Гоша".match(/Г.*а/)
# + - от 1 до бесконечности предыдущего символа
puts"Маша и Гоша".match(/Г.+а/)

# проверить, что вся строка состоит из чисел
puts "1532462645634"=~/^[0-9]*$/
puts "1532462645634"=~/^\d*$/


# замена через регулярное выражение
puts "I have an old car".gsub(/an old/, "a new")
