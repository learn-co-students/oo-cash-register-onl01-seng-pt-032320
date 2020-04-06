require 'pry'

class CashRegister
attr_accessor :total, :discount :price

def initialize(discount = 0)
@total = 0
@discount = discount
@basket = Array.new
@last_trans = Array.new

end

def add_item(product,price,quantity=1)
  item = {}
   #this hash represents an item at quantity
  item[:product] = product
  item[:price] = price
  item[:quantity] = quantity
  
  
  @basket.push(item)
  @last_trans.push(@basket[-1])
  @total += price * quantity
  
end

def apply_discount
  if @discount == 0 then
    "There is no discount to apply."
  else
     @total -= @total * @discount/100
     "After the discount, the total comes to $#{total}."
  end
end

def items
  new_list = Array.new
 @basket.each do|item|
    for i in 1..item[:quantity]
      
      new_list.push(item[:product])
    end
 end
 new_list
end

def void_last_transaction
binding.pry
to_be_void = @last_trans.pop.to_a

@total -= to_be_void[1] * to_be_void[2]
  
end


end
