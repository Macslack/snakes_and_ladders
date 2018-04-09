require('minitest/autorun')
require_relative('../snake_ladder.rb')

class SnakeTest < MiniTest::Test

  def setup()
    @ladder = SnakeLadder.new(6, 3)
    @snake = SnakeLadder.new(43, -9)
  end

  def test_can_get_snake_start()
    assert_equal(43, @snake.start_point)
  end
end
