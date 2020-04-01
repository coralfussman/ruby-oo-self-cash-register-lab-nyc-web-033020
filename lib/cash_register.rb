
class CashRegister

 attr_accessor :total, :discount, :items

def initialize(discount = 0)
@total = 0
@discount = discount
@items = []
end

def add_item(title, price, quantity = 1)
 quantity.times { @items << title }
total_quant_price = price * quantity.to_f
self.total += total_quant_price
end

def void_last_transaction
    self.total -= @last_transaction
  end

def apply_discount
if  @discount == 0
  "There is no discount to apply."
else self.total *= (100 - discount)/100.0
     self.total = self.total.to_i
"After the discount, the total comes to $#{self.total}."
end
end
end
