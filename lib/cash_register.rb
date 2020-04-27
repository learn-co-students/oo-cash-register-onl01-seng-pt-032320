
class CashRegister
  
  attr_accessor :total, :discount
  
  attr_reader :items
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @items = []
    
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times do
      @items << title
    end
    @last_transaction = @total
    @total += (price * quantity)
  end
    
  def apply_discount 
    if @discount > 0
      @total -= (@discount/100.0 * @total)
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total = @last_transaction
  end
end