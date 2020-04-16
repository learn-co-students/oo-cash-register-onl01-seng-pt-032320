class CashRegister
  attr_accessor :total, :discount, :cart 
 
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end
  
  def add_item(item, price, quantity = 1)
    item_hash = {}
    item_hash[:name] = item
    item_hash[:price] = price
    item_hash[:quantity] = quantity
    @cart << item_hash
    self.total += price * quantity
  end
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
    self.total = total - total * discount.to_f / 100
    "After the discount, the total comes to $#{total.to_i}."
    #I need to apply the discount to the total price of the register
    end
  end
  
  def items
    new_cart = []
    @cart.each do |things|
      things[:quantity].times {
      new_cart << things[:name]}
    end
    new_cart
  end
  
  def void_last_transaction
    @cart.pop()
    self.total = 0
    @cart.each {|item| self.total += item[:price] * item[:quantity] }
    self.total
  end
end
