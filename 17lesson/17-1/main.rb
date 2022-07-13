require 'date'

holidays = File.readlines("#{__dir__}/lib/holidays.txt").map {|date| date.chomp}

# p holidays
today_date = Date.today

if today_date.sunday? ||
   today_date.saturday? ||
   holidays.include?(today_date.strftime("%d.%m"))
  puts "сегодня выходной:)"
else
  puts "сегодня не выходной:("
end
