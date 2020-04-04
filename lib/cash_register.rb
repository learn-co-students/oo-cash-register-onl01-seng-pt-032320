require "pry"
class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = total = 0
    @discount = discount.to_i
    @items = []
  end

  def add_item(title, price, item_amount = 1)
    @total = total.to_f + (price.to_f * item_amount.to_i)
      if item_amount > 1
        i = 0
        while i < item_amount
          @items << title
          i += 1
        end
      else
        @items << title
      end
    @last_transaction = price * item_amount

  end

  def apply_discount
    #binding.pry
    if discount == 0
      return "There is no discount to apply."
    else
      @discount = ((100.0 - discount.to_f) / 100.0 )
      @total = total * discount
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end



end
