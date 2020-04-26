class CashRegister
  attr_accessor :total, :discount, :cart, :lastCharge
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price*quantity
    quantity.times {
      cart << title
    }
    self.lastCharge = price*quantity
  end
  
  def apply_discount
    if discount > 0
      self.total = total*(1-discount*0.01)
      return "After the discount, the total comes to $#{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @cart
  end
  
  def void_last_transaction
    self.total = self.total - self.lastCharge
  end
end