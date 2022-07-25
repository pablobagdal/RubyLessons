def happy_birthday(person)
  dear_word = person[:gender] == :male ? "Дорогой" : "Дорогая"

  puts "#{dear_word} #{person[:name]},\r\n\r\n"
  puts "Поздравляем Вас с днём рождения!"

  before_age_word = person[:gender] == :male ? "аж" : "всего лишь"

  puts "Вам сегодня исполняется #{before_age_word} #{person[:age]}!\r\n\r\n"

  last_phrase = person[:gender] == :male ? "в лечении простатита" : "новых начинаниях"

  puts "Желаем успехов #{last_phrase}!\r\n\r\n"
end
