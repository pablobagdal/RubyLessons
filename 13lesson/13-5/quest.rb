# coding: utf-8
require_relative 'lib/question'
require_relative 'lib/functions.rb'

QUESTIONS_COUNT = 3

file_names = Dir[File.join(__dir__,"/data/*.txt")]

#заполняем массив объектами нашего класса, атрибутами которого становятся данные из переменной
questions = file_names.map do |file_name|
  question, answer, points = File.readlines(file_name, chomp: true)
  Question.new(question, answer, points.to_i)
end

#выбираем только нужное количество объектов
quiz_questions = questions.sample(QUESTIONS_COUNT)

puts "Мини-викторина. Ответьте на вопросы."
puts

right_answers = 0
score = 0
max_score = 0

#основной цикл
quiz_questions.each.with_index(1) do |quiz_question, index|
  inclination_current = inclination(quiz_question.points, "балл", "балла", "баллов")
  # question output
  puts "#{index}. #{quiz_question.question} (#{quiz_question.points} #{inclination_current})"

  user_answer = $stdin.gets.chomp

  # check if correct answer
  if quiz_question.has_this_answer?(user_answer)
    puts "Верный ответ! Вам начислено #{quiz_question.points} #{inclination_current}"
    score += quiz_question.points
    right_answers += 1
  else
    puts "Неправильно. Правильный ответ: #{quiz_question.answer}"
  end

  max_score += quiz_question.points
end

puts "Правильных ответов: #{right_answers} из #{quiz_questions.size}"
puts "Набрано баллов: #{score} из #{max_score}"
