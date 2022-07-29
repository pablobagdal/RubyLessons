#
# Класс Коллекция Товаров
class ProductCollection
  attr_accessor :products

  def initialize(products)
    @products = products
  end

  # cчитывает продукты из папки data, сам понимая, какие товары в какой папке лежат.
  def self.from_dir

  end


  # sort, который сортирует товары по цене, остатку на складе или по названию (как по возрастанию, так и по убыванию):
  def sort(sort_by_this, direction)
      case sort_by_this
      when "price" then {}
      when "amount" then {}
      when "name" then {}
      else {}
    end

  end

  #  возвращает массив товаров.
  def to_a
  end
end
