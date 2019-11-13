class Customer

attr_reader :name, :wallet

  def initialize(name, wallet)
   @name = name
   @wallet = wallet
  end

   def remove_money(amount)
     @wallet -= amount
   end

   def buy_drink(drink,pub)
    remove_money(drink.price)
    pub.add_money(drink.price)
    pub.remove_drink(drink)
   end
end
