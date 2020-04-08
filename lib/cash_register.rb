require 'pry'

class CashRegister
  
  attr_accessor :total
  
  def initialize(val = 0)
    @total = val
  end
  
  def discount
    val2 = 20
    val2
  end
  
  def add_item(title, price, quant = 1)
    @total += price*quant
  end
  
  def apply_discount
    discont_percentage = 5
    #binding.pry
    discount_ammount = @total/discont_percentage
    @total -= discount_ammount
    #binding.pry
  end

end 
