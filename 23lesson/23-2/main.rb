# Найдите в интернете способ выяснить объявлена ли переменная, и напишите
# программу, которая пишет, объявлены ли переменные a и b.

# Затем объявите переменную a и запустите программу.

b = "hello"

puts "b is"
defined?(b) ? puts("defined") : puts("not defined")

puts "a is"
defined?(a) ? puts("defined") : puts("not defined")

a = 234

puts "a is"
defined?(a) ? puts("defined") : puts("not defined")
