# encoding: utf-8
#
# Класс Товар
class Product
  attr_writer :price, :amount

  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
  end
  def to_s
    "#{@price} руб. Осталось #{@amount}шт."
  end
  def update(params)
    @price = params[:price] if params[:price]
    @amount = params[:amount] if params[:amount]
  end
end
