puts "Введите email"

email = $stdin.gets.encode("UTF-8").chomp

if email.match(/^[a-z\d_+\-\.]+@[a-z\d\-\.]*[a-z\d\-]+.[a-z]+$/i)
  puts "Это email"
else
  puts "Это не email"
end
