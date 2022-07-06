puts "Мини-викторина. Ответьте на вопросы."
puts

QUIZ_QUESTIONS_NUMBER = 5

filenames = Dir[__dir__+"/data/*.txt"]

questions_data = filenames.map {|filename| File.readlines(filename, chomp: true)}
quiz_questions_data = questions_data.sample(QUIZ_QUESTIONS_NUMBER)

scores = 0
quiz_questions_data.each.with_index(1) do |(question, correct_answer), question_number|
  puts "#{question_number}. #{question}"
  user_answer = STDIN.gets.chomp

  if correct_answer.downcase == user_answer.downcase
    scores += 1
    puts "Правильно"
  else
    puts "Не правильно. Правильный ответ: #{correct_answer}"
  end
end

puts "Ваш результат: #{scores} из #{quiz_questions_data.size}"


