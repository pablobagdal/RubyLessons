require "pony"
require "io/console"

my_mail = "pablobagdal@gmail.com"

puts "Введите пароль от #{my_mail}:"
puts ""

password = $stdin.noecho(&:gets).chomp

puts "Кому отправить письмо?"
puts ""

send_to = $stdin.gets.chomp

puts "Что хотите написать в письме?"
puts ""

message = $stdin.gets.chomp


Pony.mail {
  :subject => "Привет из Ruby!",
  :body => message,
  :to => send_to,
  :from => my_mail
}
