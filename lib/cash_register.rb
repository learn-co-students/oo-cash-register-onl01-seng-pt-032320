require 'pry'
class CashRegister
  attr_accessor :total, :discount, :last_transaction


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end



  def add_item(item, price, quantity = 1 )
    @total = @total + (price * quantity)
    @total
    quantity.times {@items << "#{item}"}
    @last_transaction = (price * quantity)
  end

  def apply_discount

    if @discount == 0
      "There is no discount to apply."
    else
    d = @discount.to_f
    t = @total.to_f
    @total = t - (t * (d / 100))
    "After the discount, the total comes to $#{@total.to_i}."
  end
  end

  def items
    @items
  end

  def void_last_transaction
    t = @total.to_f
    @total = t - @last_transaction
    if @items.empty?
      @total = 0
    end
    @total
  end
end
