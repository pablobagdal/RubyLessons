puts "Input the number"
user_input = gets.chomp

begin
  number = Integer(user_input)
  puts "It's a number #{number}"
rescue StandardError
  puts "It's not a number"

end
