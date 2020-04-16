require 'pry'

class CashRegister
attr_accessor :total, :discount, :items

  def initialize(discount = nil)
    @total = 0
    @items = []
    @discount = discount
  end
  
  def add_item(title, price, quantity=nil)
    if not quantity == nil
      value = price*quantity
      quantity.times do
        @items << title
      end
    else
      value = price
      @items << title
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