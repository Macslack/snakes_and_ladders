require('minitest/autorun')
require_relative('../dice.rb')

class DiceTest < MiniTest::Test

  def setup()
    @dice = Dice.new(6)
  end

  def test_can_roll()
    dice_numbers = [1,2,3,4,5,6]
    result = @dice.roll()
    assert_equal(true, dice_numbers.include?(result))
  end
end
