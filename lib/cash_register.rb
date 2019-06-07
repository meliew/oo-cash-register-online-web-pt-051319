
class CashRegister

  @@items = []
  attr_accessor :discount, :total, :name

  def initialize(discount= 0)
    @items = []
    @total = 0
    @name = name
    @discount = discount
    @@items << self


  end

  def add_item(title, price, quantity= 1)
    @price = price
      @total += price * quantity
      if quantity > 1
        count = 1
        while count <= quantity
          @items << title
          count += 1
        end
      else
    @items << title
  end
end

  def apply_discount
    return "There is no discount to apply." if @discount == 0
    @total -= (@discount/100.0) * @total
    "After the discount, the total comes to $#{@total.to_i}."
  end

def void_last_transaction
@items - @price.to_i

end

  def items
    @items
  end
end
