# использование оператора ! опасно и может дать неожиданный результат

puts "abcd".downcase #=> даст "abcd"
puts "AbcD".downcase #=> даст "abcd"
# Но
puts "abcd".downcase! #=> даст "abcd"
puts "AbcD".downcase! #=> даст nil
