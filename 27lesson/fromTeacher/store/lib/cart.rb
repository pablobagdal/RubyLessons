class Cart
  def initialize
    @products = []
  end

  def <<(new_product)
    @products << new_product
  end

  def total
    @products.sum(&:price)
  end

  def to_s
    @products
      .tally
      .map { |product, amount| "#{product.info} X #{amount} шт. = #{product.price * amount} руб." }
      .join("\n")
  end
end
