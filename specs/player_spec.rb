require('minitest/autorun')
require_relative('../player.rb')
require_relative('../counter.rb')
require_relative("../dice.rb")

class PlayerTest < MiniTest::Test

  def setup()
    @counter = Counter.new("Yellow")
    @player = Player.new("Bob", @counter)
    @dice = Dice.new(6)
  end

  def test_roll_dice()
    numbers = [1,2,3,4,5,6]
    result = @player.roll_dice(@dice)
    assert_equal(true, numbers.include?(result))
  end

  def test_can_move_counter()
    @player.move_counter(3)
    counter = @player.counter
    assert_equal(3, counter.position)
  end
end
