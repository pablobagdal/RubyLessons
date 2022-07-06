# encoding:utf-8

require 'date'

class Patient
  def initialize(name, surname, patronymic, date_of_birth)
    @name = name
    @surname = surname
    @patronymic = patronymic
    @date_of_birth = Date.parse(date_of_birth)
  end

  def full_name
    return "#{@surname} #{@name[0]}.#{@patronymic[0]}."
  end

  def age
    today = Date.today
    result = Date.today.year - @date_of_birth.year

    if (today.month < @date_of_birth.month) ||
      (today.month == @date_of_birth.month &&
        today.day < @date_of_birth.day)
      result = result.to_i - 1
    end
    return result
  end

  def adult?
    age >= 18
  end


end

pavel = Patient.new("Павел", "Багдалов", "Дмитриевич", "28.12.1998")

puts "Пациент #{pavel.full_name}"
puts "Возраст #{pavel.age}"
puts "Совершеннолетний - #{pavel.adult?}"
puts pavel.inspect
