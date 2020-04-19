require 'pry'

class CashRegister
  
  attr_accessor :discount, :total, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    (@items << item) * quantity
    binding.pry
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
    
end
