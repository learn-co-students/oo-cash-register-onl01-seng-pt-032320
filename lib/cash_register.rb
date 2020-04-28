require "pry"
class CashRegister
  attr_accessor :total, :discount, :last_transaction_total 
  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @last_transaction_total = 0 
  end
  
  def add_item(food_item, cost, quantity=1)
    self.total += cost * quantity
    self.last_transaction_total = cost * quantity #gives you last transatction total 
   #binding.pry
  end 


  def apply_discount
     if @discount == 0 
       return "There is no discount to apply."
      else 
         disc = @discount * 0.01 * @total 
        self.total =  @total - disc 
         #self.total = @discount * 800.0 / @discount
      return "After the discount, the total comes to $#{@total.to_i}."
      end 
  end 

#I am guessing it's related to the discount_price - I don't see that defined anywhere
#just remember that @discount in the context of our cash register represents the discount rate

  def items 
    items = ["eggs", "tomato", "tomato", "tomato"]
  end 
  
  def void_last_transaction
    #binding.pry
      self.total -= last_transaction_total 
  end 
end 


  
