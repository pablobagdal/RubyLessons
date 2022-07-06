# coding: utf-8

require_relative'lib/film'

DIRECTORS_COUNT = 6

file_names = Dir[File.join(__dir__,"/data/*.txt")]

#выгружаем все данные из файлов в одну переменную
films = file_names.map do |filename|
  name, director, year = File.readlines(filename, chomp: true)
  Film.new(name,director,year)
end

directors = films.map { |film| film.director }
directors = directors.uniq

puts "Программа «Фильм на вечер»"
puts ""

# directors to show
selected_directors = directors.sample(DIRECTORS_COUNT)
# output list of directors
selected_directors.each.with_index(1) do |director, index|
    puts "#{index}: #{director}"
end

puts "Фильм какого режиссера вы хотите сегодня посмотреть?"

user_answer = $stdin.gets.to_i

until user_answer.between?(1,directors.size)
  puts "Введён некорректный номер. Введите число от 1 до #{selected_directors.size}"
  user_answer = $stdin.gets.to_i
end

# the name of selected director
choosen_director = selected_directors[user_answer-1]

# collecting this director's films
choosen_director_films =
  films.select do |film|
    film.director == choosen_director
  end

# selecting a random film of the choisen director
choosen_film = choosen_director_films.sample

# final output
puts "И сегодня вечером рекомендую посмотреть:"
puts choosen_film
