puts "Первое число:"

first_number = gets.to_f

puts "Второе число:"

second_number = gets.to_f

puts "Выберите операцию (+ - * /):"

operation = gets.chomp

puts "Результат:"

case operation
when '+' then puts first_number + second_number
when '-' then puts first_number - second_number
when '*' then puts first_number * second_number
when '/' then puts first_number / second_number

end
