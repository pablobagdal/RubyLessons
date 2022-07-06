# coding: utf-8

require_relative'lib/film'

NUMBER_OF_QUESTIONS = 5
DIRECTORS_FOR_QUIZ = 4

file_names = Dir[File.join(__dir__,"/data/*.txt")]

#выгружаем все данные из файлов в одну переменную
films = file_names.map do |filename|
  name, director, year = File.readlines(filename, chomp: true)
  Film.new(name,director,year)
end

directors = films.map { |film| film.director }
directors = directors.uniq

# выбираем нужное количество уникальных фильмов из архива
quiz_films = films.sample(NUMBER_OF_QUESTIONS)

score = 0

puts "Добрый день, любитель кино!"
puts "Давай посмотрим, хорошо ли ты знаешь какой режиссер какой фильм снял?"

# основной цикл
quiz_films.each do |quiz_film|
  puts ""
  puts "Кто снял «#{quiz_film.name}» (#{quiz_film.year})? (выберите число)"
  puts ""

  # array for directors used in quiz_question just once
  directors_for_quiz = [quiz_film.director]
  count_directors_for_quiz = 1
  # duplicate original array of directors to prevent changes.
  # Using shuffle to warranty various directors every new quiz_question
  shuffled_directors = directors.dup.shuffle

  shuffled_directors.each do |director|
    shuffled_directors.shuffle!

    unless directors_for_quiz.include?(director)
      directors_for_quiz << director
      count_directors_for_quiz += 1
      break if count_directors_for_quiz == DIRECTORS_FOR_QUIZ
    end
  end

  directors_for_quiz.shuffle!

  directors_for_quiz.each.with_index(1) do |director, index|
    puts "#{index}. #{director}"
  end

  user_answer = $stdin.gets.to_i

  if user_answer == directors_for_quiz.find_index(quiz_film.director) + 1
    puts "Верно!"
    score += 1
  else
    puts "Неправильно! Правильный ответ — #{quiz_film.director}."
  end
end

puts "Вы угадали #{score} режиссеров из #{quiz_films.size}"
