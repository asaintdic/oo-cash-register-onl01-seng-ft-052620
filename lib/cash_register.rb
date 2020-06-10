class CashRegister
  attr_accessor :total, :discount, :items, :last_item
 
  
  def initialize(discount = 0)
    @items = []
    @discount = discount
    @total = 0 
  end
  
  def add_item(item, price, quantity = 1)
       self.total = (quantity * price) + self.total
       @items << item
  end
  
   def items(item)
     add_item(item, price, quantity = 1)
     @items
   end
     
  
  def apply_discount
    if @discount == 0 
      "THere is no discount to apply."
    else
      self.total -= (0.01 * @discount * @total).to_i 
      "After the discount, the total comes to $#{self.total}."
    end
  end

   
 
  
    def void_last_transaction
    self.total = self.total - self.last_item
  end

end
 