puts "Введите номер телефона"

phone_number = $stdin.gets.encode("UTF-8").chomp
phone_number = phone_number.gsub(' ','')

phone_number_reg_exp = /^\+{,1}\d(\(\d{3}\)){,1}$/

# if phone_number.match(phone_number_reg_exp)
#   puts "Это номер телефона"
# else
#   puts "Это не номер телефона"
# end
