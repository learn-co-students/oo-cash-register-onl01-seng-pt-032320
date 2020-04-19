require 'pry'

class CashRegister
  
  #attr_writer :total
  attr_reader :discount
  
  def initializate(*discount)
    @total = 0
    @discount = discount
  end

  def total
    @total * @discount
  end
  
  def add_item(item, price, *quantity)
    self.total += price * quantity
  end
    
end
