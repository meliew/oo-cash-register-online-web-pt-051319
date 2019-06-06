
class CashRegister

  @@items = []
  attr_accessor :discount, :total, :items

  def initialize(discount= 0)
    @total = 0
    @discount = discount
    @items = []

  end

  def add_item(title, price, quantity= 1)
    @total += price * quantity
    @items << title
    @@items << title
  end

  def apply_discount
    return "There is no discount to apply." if @discount == 0
    @total -= (@discount/100.0) * @total
    "After the discount, the total comes to $#{@total.to_i}."
  end
def items
  @@items
end
end
