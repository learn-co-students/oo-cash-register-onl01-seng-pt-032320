
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
    
  end
  
  
end