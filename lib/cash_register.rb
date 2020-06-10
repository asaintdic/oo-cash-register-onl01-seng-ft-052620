class CashRegister
  attr_accessor :total, :discount, :items, :price, :quantity
 
  
  def initialize(discount = 0)
    @items = []
    @discount = discount
    @total = 0 
    @transactions = []
  end
  
  def add_item(item, price, quantity = 1)
       quantity.times
      end 
  end
  
   def items
     @items
   end
     
  
  def apply_discount
    if @discount == 0 
      "There is no discount to apply."
    else
      self.total -= (0.01 * @discount * @total).to_i 
      "After the discount, the total comes to $#{self.total}."
    end
  end

   
 
  
    def void_last_transaction
    self.total = @transactions.pop
    self.total
     
  end

end
 