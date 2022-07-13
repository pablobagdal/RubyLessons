require_relative'lib/film'

NUMBER_OF_QUESTIONS = 5
DIRECTORS_FOR_QUIZ = 4

films =
  Dir[File.join(__dir__,"/data/*.txt")].map do |filename|
    name, director, year = File.readlines(filename, chomp: true)
    Film.new(name, director, year.to_i)
  end

directors = films.map { |film| film.director }.uniq

puts "Добрый день, любитель кино!"
puts "Давай посмотрим, хорошо ли ты знаешь какой режиссер какой фильм снял?"

score = 0

quiz_films = films.sample(NUMBER_OF_QUESTIONS)

quiz_films.each do |film|
  puts
  puts "Кто снял #{film}? (выберите число)"
  puts

  current_director = film.director

  quiz_directors =
    directors.grep_v(current_director).
    sample(DIRECTORS_FOR_QUIZ-1) <<
    current_director

  quiz_directors.shuffle!

  quiz_directors.each.with_index(1) do |director, index|
    puts "#{index}. #{director}"
  end

  user_answer = $stdin.gets.to_i

  choosen_director = quiz_directors[user_answer - 1]

  if choosen_director == film.director
    puts "Верно!"

    score += 1
  else
    puts "Неправильно! Правильный ответ — #{film.director}."
  end
end

puts "Вы угадали #{score} режиссеров из #{quiz_films.size}"
