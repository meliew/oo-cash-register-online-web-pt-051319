
class CashRegister

  @@items = []
  attr_accessor :discount, :total, :name

  def initialize(discount= 0)
    @total = 0
    @name = name
    @discount = discount
    @@items << self


  end

  def add_item(title, price, quantity= 1)
    @total += price * quantity

    @items << title
  end

  def apply_discount
    return "There is no discount to apply." if @discount == 0
    @total -= (@discount/100.0) * @total
    "After the discount, the total comes to $#{@total.to_i}."
  end

  def items
    @items
  end
end
