class CashRegister
  attr_accessor :total, :discount
  attr_reader :items

  @last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @last_transaction = price*quantity
    self.total += @last_transaction
    @items.fill(title, @items.length, quantity)
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    end
    self.total -= (@discount/100.0)*self.total
    "After the discount, the total comes to $#{@total.to_i}."
  end

  def void_last_transaction
    self.total -= @last_transaction
  end
end
