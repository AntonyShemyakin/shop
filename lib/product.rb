class Product
  attr_reader :price, :quantity

  def initialize(param)
    @price = param[:price]
    @quantity = param[:quantity]
  end

  def to_s
    "Цена: #{@price} руб. (Количество: #{@quantity}"
  end
end