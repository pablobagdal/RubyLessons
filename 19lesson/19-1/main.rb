puts "Первое число:"

first_number = gets.to_i

puts "Второе число:"

second_number = gets.to_i

puts "Выберите операцию (+ - * /):"

operation = gets.chomp

puts "Результат:"

case operation
when '+' then puts first_number + second_number
when '-' then puts first_number - second_number
when '*' then puts first_number * second_number
when '/' then begin
    puts first_number / second_number
  rescue ZeroDivisionError => e
    puts "На ноль делить нельзя"
  end
end
