class Pub

  attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def count_drinks
    @drinks.count
  end

  def remove_drink(drink)
    @drinks.delete(drink)
  end

  def add_money(amount)
    @till += amount
  end

end
