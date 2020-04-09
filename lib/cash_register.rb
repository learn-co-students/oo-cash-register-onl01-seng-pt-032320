require_relative './items'

class CashRegister

    attr_accessor :discount, :total
    attr_reader :items


    def initialize(discount = 0)
        @total = 0.00
        @discount = discount
        @items = Array.new
    end

    def add_item(title, price, amount = 1)
        item = Items.new(title, price, amount)
        @total = @total + (item.price * item.quantity)
        @items << item
    end

    def apply_discount
        if @discount != 0
            discount = @discount.to_f / 100
            @total -= (@total * discount)
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        items = Array.new
        @items.each do |item|
            x = item.quantity
            while x > 0
                items << item.name
                x -= 1
            end 
        end
        items
    end

    def void_last_transaction
        item = @items.pop
        @total -= (item.price * item.quantity)
    end
end
