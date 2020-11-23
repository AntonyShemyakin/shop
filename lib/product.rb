class Product
  attr_reader :price, :quantity

  def initialize(param)
    @price = param[:price]
    @quantity = param[:quantity]
  end
end