class Cart
  attr_accessor :products
  def initialize
    @products = []
  end

  def total
    @products.sum(&:price)
  end

  def to_s
    @products
      .tally
      .map {|product, amount| "#{product.info}, #{amount}шт. -- #{product.price * amount}руб."}
      .join("\n")
  end

  def <<(new_product)
    @products << new_product
  end
end
