# Объявить три переменных:

# Глобальную переменную $a
# Локальную переменную b
# Переменную c внутри метода method
# Проверить объявлена ли каждая из них: внутри метода method и в основном тексте программы.

# Пример результата:

# > ruby scopes.rb
# Переменная '$a': global-variable
# Переменная 'b':
# Переменная 'c': local-variable
# Переменная '$a': global-variable
# Переменная 'b': local-variable
# Переменная 'c':

$a = "i'm global global-variable"

b = 'I\'m local variable'

def method
  c = 'I\'m in the method'
puts "in the method"
puts "Переменная '$a': #{defined?($a)}"
puts "Переменная 'b': #{defined?(b)}"
puts "Переменная 'c': #{defined?(c)}"
puts "end of the method"
end

method


puts "Переменная '$a': #{defined?($a)}"
puts "Переменная 'b': #{defined?(b)}"
puts "Переменная 'c': #{defined?(c)}"
