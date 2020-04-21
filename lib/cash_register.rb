require 'pry'
class CashRegister
  attr_accessor :total, :discount


  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1 )
    @total = @total + (price * quantity)
    @total
  end

  def apply_discount

    if @discount == 0
      "There is no discount to apply."
    else
    d = @discount.to_f
    t = @total.to_f
    @total = t - (t * (d / 100))
    # binding.pry

    "After the discount, the total comes to $#{@total.to_i}."
  end
  end

  def items
    
  end
end
