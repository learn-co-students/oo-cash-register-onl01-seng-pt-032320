class CashRegister
  attr_accessor :total, :discount, :quantity, :price, :items, :last

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @price = price
    @quantity = quantity
    @items = []
    @transactions = []
  end

  def add_item(name, price, quantity = 1)
    @total += price * quantity
    @last = price * quantity
    @transactions << price
    i = quantity
    until i == 0 do
      @items << name
      i -= 1
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      self.total -= (0.01 * @discount * @total).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last
  end
end