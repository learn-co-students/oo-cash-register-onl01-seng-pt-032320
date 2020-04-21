class CashRegister
  attr_accessor :total, :discount, :items, :last_item
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_item = []
  end
  
  def items
    @items
  end 
  
  def add_item(title, price, quantity = 1)
   self.total += price * quantity
  quantity.times do 
    self.items << title
    end
    self.last_item = price * quantity
  end
  
  def apply_discount
    if discount != 0 
      @total -= (@total * (@discount / 100.to_f))
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end 
  end 
  
  def void_last_transaction
    @items.delete_at(-1)
    self.total = self.total - @last_item
  end
  
end
