class CashRegister
  
  attr_accessor :total, :items, :last_item_price, :number_of_items, :quantity, :discount
  
  def initialize (total = 0, discount = 20)
    @total = total
    @items = []
    @discount = discount
    
  def total 
    @total
  end 
  
  def add_item (item, price, quantity = 1)
    @number_of_items = 0
    @quantity = quantity
    @total = @total + (price * quantity)
    until @number_of_items == quantity
      @items << item
      @number_of_items += 1
    end 
    @last_item_price = price
  end 
  
  def apply_discount
    if @discount == 20
      @total.to_f
      @total = @total * 0.80
      @total = @total.to_i
      puts "After the discount, the total comes to $#{@total}."
    elsif @discount == nil 
      puts "There is no discount to apply."
    end 
  end 
  
  def items
    @items
  end 
  
  def void_last_transaction
    @number_of_items = 0
    until @number_of_items == @quantity
      @items.pop
      @total = @total - @last_item_price
      @number_of_items += 1
    end 
    if @items.size == 0 
      return @total
    end 
  end 
  end 
  
  
end 