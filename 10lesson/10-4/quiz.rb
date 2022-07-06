QUESTIONS_COUNT = 3

file_paths = Dir["#{__dir__}/data/*"]

quiz_data = file_paths.map {|file_path| file = File.readlines(file_path, chomp: true)}

puts "Мини-викторина. Ответьте на вопросы."

score = 0

selected_quiz_data = quiz_data.sample(QUESTIONS_COUNT)

selected_quiz_data.each do |(question,right_answer)|
  puts question

  user_answer = $stdin.gets.chomp.downcase

  if user_answer == right_answer.downcase
    score += 1
    puts "Верный ответ!"
  else
    puts "Неправильно. Правильный ответ: #{right_answer}"
  end
end

puts ""
puts "Правильных ответов: #{score} из #{selected_quiz_data.size}"
