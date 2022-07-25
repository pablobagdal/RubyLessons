
# А теперь составьте массив хэшей с несколькими пассажирами в вагоне.

# Индекс хэша в массиве — место пассажира в вагоне.

# Затем выведите все билеты на экран.

# Например:

# > ruby passenger.rb
# Пассажиры поезда Москва — Петушки

# * * * Место № 1 * * *
# Билет № РМ2010398 050298
# Маршрут: Москва -> Петушки
# Пассажир: Венедикт В. Ерофеев
# Паспорт: 45 99 505281

# * * * Место № 2 * * *
# Билет № РМ2010399 050298
# Маршрут: Павловский Посад -> Орехово-Зуево
# Пассажир: Иннокентий П. Шниперсон
# Паспорт: 46 01 192872

# * * * Место № 3 * * *
# Билет № РМ2010399 050298
# Маршрут: Москва -> Владимир
# Пассажир: Иван В. Бунша
# Паспорт: 47 33 912876

passenger_1 = {
  ticket_number: 'РМ2010398 050298',
  first_name: 'Семён',
  second_name: 'Геннадьевич',
  last_name: 'Петров',
  passport_number: '49 99 505281',
  departure_city: 'Москва',
  destination_city: 'Петушки'
}
passenger_2 = {
  ticket_number: 'РМ2010398 050298',
  first_name: 'Венедикт',
  second_name: 'Васильевич',
  last_name: 'Ерофеев',
  passport_number: '45 99 503841',
  departure_city: 'Москва',
  destination_city: 'Волгоград'
}
passenger_3 = {
  ticket_number: 'РМ2010398 050298',
  first_name: 'Павел',
  second_name: 'Павлович',
  last_name: 'Алексеев',
  passport_number: '45 99 505234',
  departure_city: 'Москва',
  destination_city: 'Владивосток'
}

train_passengers = [
  passenger_1,
  passenger_2,
  passenger_3
]

train_passengers.each.with_index(1) do |passenger, index|
  puts "* * * Место № #{index} * * *"
  puts "Билет #{passenger[:ticket_number]}"
  puts "Маршрут #{passenger[:departure_city]} - #{passenger[:destination_city]}"
  puts "Пассажир #{passenger[:last_name]} #{passenger[:first_name][0]}. #{passenger[:second_name][0]}."
  puts "Пасспорт #{passenger[:passport_number]}"
end
