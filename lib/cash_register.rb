require 'pry'
class CashRegister
  attr_accessor :title, :price, :quantity, :discount, :total, :previoustotal


  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount=discount
  end
  
  def add_item(title, price, quantity=1)
    @last_transaction = price * quantity
    previoustotal = @total
    quantity.times do
      @items << title 
    end
    totalprice = previoustotal + (price * quantity)
    @total = totalprice
    totalprice
  end
  
  def apply_discount
    if @discount > 0
    discountindollars = @total * (@discount / 100.0)
    newprice = @total - discountindollars.to_i
    @total = newprice
    "After the discount, the total comes to $#{@total}."
    else 
    "There is no discount to apply."
  end
end

def items
  @items
end
    
def void_last_transaction
  if @items.size == 0
    0.0
  else
    @items = @items.pop
    @total = @total - @last_transaction
  end
end
    
    
end
