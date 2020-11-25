class Product
  attr_accessor :price, :quantity

  def initialize(param)
    @price = param[:price]
    @quantity = param[:quantity]
  end

  def to_s
    "Цена: #{@price} руб. (Количество: #{@quantity}"
  end

  def update(param)
    @price = param[:price] if param[:price]
    @quantity = param[:quantity] if param[:quantity]
  end
end