# Часто ассоциативный массив используют как параметр метода. Это удобно, позволяет передавать в метод доп.
# параметры без переписывания кода.

# Напишите метод happy_birthday, с одним параметром person и поздравляющий с днём рождения этого человека, используя его имя,
# возраст и текст поздравления. Все данные метод должен брать из этого хэш массива person.

# > ruby happy_birthday.rb

# Дорогой Борис,

# Поздравляем Вас с днём рождения!
# Вам сегодня исполняется аж 48!

# Желаем успехов в лечении простатита!

require_relative "lib/functions.rb"

person1 = {name: "Павел", age: 23, :gender => :male}
person2 = {name: "Анна", age: 66, :gender => :female}

happy_birthday(person1)
happy_birthday(person2)


