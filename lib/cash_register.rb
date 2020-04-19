require 'pry'

class CashRegister
  
  attr_accessor :discount, :total, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(name, price, quantity = 1) #each ITEM = [name,price,quantity]
    item = [name, price, quantity]
    self.total += price * quantity
    @items << item
  end
    
  def apply_discount
    if discount !=0
      discount = @total * (@discount.to_f/100)
      @total = @total - discount
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
    
  def items
   @items.collect{ |item| (item[0].split * item[2])}.flatten
  end
  
  def total
  #binding.pry
  @items.collect{ |name, price, quantity| @total += price * quantity}
  @total
  end
    
  def void_last_transaction
    #binding.pry
    @items.pop
  end
end
