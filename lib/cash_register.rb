require 'pry'
class CashRegister

    attr_accessor :total, :discount, :price, :title
    attr_reader :items

    def initialize (discount = 0)
        @total = 0
        @discount =  discount
        @price = price
        @title = title
        @items = []

    end

    def total 
        @total
    end

    def  add_item(title, price, quantity = 1 )
        quantity.times do
            @items << title
        end 
        @last_total = @total
        @total += price *quantity
    
        end
        
    

        def apply_discount
            if @discount > 0
                @total = @total - (@total * @discount/100)
           "After the discount, the total comes to $#{@total}." 
            else 
                "There is no discount to apply."
            end 

        end 
         
        def void_last_transaction
            @total = @last_total

        end

      
        

    end

        #     #binding.pry
         
    
        

    #binding.pry

    
    



