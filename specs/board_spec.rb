require('minitest/autorun')
require_relative('../board.rb')
require_relative('../snake_ladder.rb')

class BoardTest < MiniTest::Test

  def setup()
    @ladder = SnakeLadder.new(6, 3)
    @snake = SnakeLadder.new(43, -9)
    @board = Board.new(50, [@ladder, @snake])
  end

  def test_can_get_ladder
    ladder = @board.snakes_and_ladders.first()
    assert_equal(-9, ladder.moves())
  end


end
