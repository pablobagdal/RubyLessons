# encoding: utf-8
require_relative 'lib/credit_request'

puts"Возраст:"
age = gets.to_i
puts "пол? (m-мужской, w-женский)"
sex = gets[0]
puts "кредитная история? (y-есть, n-нет)"
credit_history = gets[0]
puts "Зарплата"
salary = gets.chomp.to_i
puts "Запрашиваемая сумма"
request_amount = gets.chomp.to_i

request1 =CreditRequest.new(age, sex, salary, credit_history, request_amount)
puts request1.approve?
