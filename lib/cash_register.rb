require 'pry'

class CashRegister 
    attr_accessor :total, :discount, :items_list, :last_transaction
  
    
    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items_list = []
    end
    
    def add_item(title, price, quantity = 1)
       @total = total + (price * quantity)
        if quantity > 1
          i = 0
          while i < quantity 
            @items_list << title
            i += 1 
          end 
        else 
            @items_list << title
       end 
       @last_transaction = price * quantity
    end

    def apply_discount
      if self.discount != 0
        self.total -= (self.total * self.discount / 100)
        "After the discount, the total comes to $#{self.total.round(2)}."
      else 
        "There is no discount to apply."
      end
    end
    
    def items 
      @items_list
    end 
  
    def void_last_transaction 
      self.total -= last_transaction
  
    end 

end

