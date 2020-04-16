
require 'pry'

class CashRegister
attr_accessor :total, :discount
  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity=nil)
    if not quantity == nil
      value = price*quantity 
    else
      value = price
    end
    @total += value
  end
  
  def apply_discount
    if @discount != nil
    discount = @discount*10
    @total = @total - discount
    "After the discount, the total comes to $#{total}."
  else
    "There is no discount to apply."
  end
  end
  
  
end