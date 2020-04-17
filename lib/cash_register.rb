class CashRegister
    
    attr_accessor :total
    attr_reader :discount
    
    def initialize(total= 0, discount= 20)
        @total = total
        @discount = discount
    end 

    
end 
