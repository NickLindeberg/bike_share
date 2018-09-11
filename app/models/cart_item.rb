class CartItem < SimpleDelegator
  attr_reader :quantity
  def initialize(item, quantity=0)
    super(item)
    @quantity = quantity
  end

  def subtotal(item)
    item.price * @quantity
  end

  def increase
    @quantity += 1
  end

end