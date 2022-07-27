# encoding: utf-8
#
# Класс Книга
class Book < Product
  def initialize(params)
    super
    @name = params[:name]
    @genre = params[:genre]
    @author = params[:author]
  end
  def to_s
    "Книга «#{@name}», #{@genre}, автор - #{@author}, #{@price} руб. (осталось #{@amount}) "
  end
end
