require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../drink')
require_relative('../pub')

class TestCustomer < Minitest::Test
  def setup()
  @customer = Customer.new("Mary", 5)
  @gin = Drink.new("gin", 1)
  @vodka = Drink.new("vodka", 1)
  @whisky = Drink.new("whisky", 1)

  @drinks = [@gin, @vodka, @whisky]

  @pub = Pub.new("The Princes Arms", 100, @drinks)
  end

  def test_get_customer_name
    assert_equal("Mary", @customer.name)
  end

  def test_get_wallet
    assert_equal(5, @customer.wallet)
  end

  def test_remove_money_from_wallet
    @customer.remove_money(1)
    assert_equal(4, @customer.wallet)

  end


  def test_buy_drink
    @customer.buy_drink(@whisky,@pub)
    assert_equal(4, @customer.wallet)
    assert_equal(101, @pub.till)
    assert_equal(2, @pub.count_drinks)


  end
end
