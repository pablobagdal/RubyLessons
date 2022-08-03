#
# класс Корзина
class Basket
  attr_accessor :products_and_amounts

  def initialize(products_and_amounts = {})
    @products_and_amounts = {} # {:product, :amount}

    products_and_amounts.each do |product_and_amount|
      @products_and_amounts[product_and_amount[:product]] = product_and_amount[:amount]
    end
  end

  def to_a
    @products_and_amounts
  end
end
