# encoding: utf-8
#
# Класс Фильм
class Film < Product
  def initialize(params)
    super
    @name = params[:name]
    @year = params[:year]
    @director = params[:director]
  end
  def to_s
    "Фильм «#{@name}», #{@year}, реж. #{@director}, #{@price} руб. (осталось #{@amount}) "
  end
end
