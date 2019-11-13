require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')

class TestPub < MiniTest::Test

  def setup()
    @gin = Drink.new("gin", 1)
    @vodka = Drink.new("vodka", 1)
    @whisky = Drink.new("whisky", 1)

    @drinks = [@gin, @vodka, @whisky]

    @pub = Pub.new("The Princes Arms", 100, @drinks)

  end

  def test_get_pub_name
    assert_equal("The Princes Arms", @pub.name)
  end

  def test_get_till
    assert_equal(100, @pub.till)
  end

  def test_get_drinks
    assert_equal(3,  @pub.count_drinks )

  end

  def test_remove_drink
    @pub.remove_drink(@vodka)
    assert_equal(2, @pub.count_drinks)
  end

  def test_add_money_to_till
    @pub.add_money(1)
    assert_equal(101, @pub.till)
  end



end
