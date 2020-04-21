class CashRegister
  attr_accessor :title, :price, :quantity, :discount, :total


  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount=discount
  end
  
  
  def add_item(title, price, quantity=1)
    previoustotal = @total
    @items << title
    @items << (price * quantity)
    totalprice = previoustotal + (price * quantity)
    @total = totalprice
    totalprice
  end
  
  def apply_discount(discount=0)
    if discount > 0
    discountindollars = totalprice * (discount / 100)
    newprice = totalprice - discountindollars
    @total = newprice
    "After the discount, the total comes to $#{@total}."
    else 
    "There is no discount to apply."
  end
end

def items
  @items
end
    
def void_last_transaction
    totalwithvoid = @total - previoustotal
    totalwithvoid
end
  
end



