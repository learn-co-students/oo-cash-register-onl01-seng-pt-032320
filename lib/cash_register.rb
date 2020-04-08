require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :items, :last_ammount
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_ammount = 0
  end
  
  def add_item(title, price, quant = 1)
    self.total += price*quant
    self.last_ammount = price*quant
    quant.times do
      self.items << title
    end
  end
  
  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
    
    self.total = (total*((100.0 - discount.to_f)/100)).to_i
    "After the discount, the total comes to $#{self.total}."
    end
  end
  
  def void_last_transaction
    self.total -= self.last_ammount
  end

end 
