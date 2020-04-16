require 'pry'

class CashRegister
attr_accessor :total, :discount, :items, :last_item

  def initialize(discount = nil)
    @total = 0
    @items = []
    @discount = discount
  end
  
  def add_item(title, price, quantity=nil)
    last_item=0
    if not quantity == nil
      value = price*quantity
      quantity.times do
        @items << title
        last_item += price
      end
    else
      value = price
      last_item = price
      @items << title
    end
    @total += value
    @last_item = last_item
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
  
  def void_last_transaction
    @total = @total - @last_item
  end
  
end