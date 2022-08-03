# encoding: utf-8
#
# Класс Товар
class Product
  attr_writer :price, :amount

  def self.from_file(file_path)
    raise NotImplementedError
  end

  def initialize(params)
    @price = params[:price].to_i
    @amount = params[:amount].to_i
  end

  def to_s
    "#{@price} руб. Осталось #{@amount}шт."
  end

  def update(params)
    @price = params[:price] if params[:price]
    @amount = params[:amount] if params[:amount]
  end
end
