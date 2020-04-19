class CashRegister
  
  attr_accessor :item, :price, :quantity, :discount, :total, :cost
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    
  end
  
  def self.total
    @total
  end
  
  def add_item(item, price, quantity = 1)
    self.cost = price.to_r * quantity.to_i
    @total += cost
    quantity.times do 
      @items << item
    end
  end
  
  def apply_discount
    if @discount > 0 
      @total -= @total * @discount.to_f / 100
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= self.cost
  end
  
end

