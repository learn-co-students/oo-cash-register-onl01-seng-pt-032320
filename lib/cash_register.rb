require 'pry'
class CashRegister
  
  attr_accessor :total, :items, :last_item_price, :number_of_items, :quantity, :discount
  
  def initialize (discount = 0)
    @total = 0
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
    if @discount > 0
      #binding.pry
      @total.to_f
      @total = @total * (1 - (@discount.to_f/100))
      @total = @total.to_i
      return "After the discount, the total comes to $#{@total}."
    elsif discount == 0
      return "There is no discount to apply."
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