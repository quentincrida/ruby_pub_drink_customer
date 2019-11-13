require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')

class TestDrink < MiniTest::Test
    def setup()
    @gin = Drink.new("gin", 1)
    end

  def test_get_drink_name
    assert_equal('gin',@gin.name)
  end

  def test_get_drink_price
    assert_equal(1, @gin.price)
  end

end
