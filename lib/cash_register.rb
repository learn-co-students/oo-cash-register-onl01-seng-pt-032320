require 'pry'

class CashRegister 
    attr_accessor :total, :discount
  
    
    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @@items_list = []
    end
    
    def add_item(title, price, quantity = 1)
        self.total += (price * quantity)
        binding.pry

        # items_list << (price * quantity)
    end
      
    
   
    
  end

