require('minitest/autorun')
require_relative('../board.rb')
require_relative('../snake_ladder.rb')
require_relative('../player.rb')
require_relative('../dice.rb')
require_relative('../counter.rb')
require_relative('../game.rb')

class GameTest < MiniTest::Test

  def setup()
    @counter1 = Counter.new("Red")
    @counter2 = Counter.new("Yellow")
    @ladder = SnakeLadder.new(6, 3)
    @snake = SnakeLadder.new(43, -9)
    @board = Board.new(50, [@ladder, @snake])
    @player1 = Player.new("Bob", @counter1)
    @player2 = Player.new("Dave", @counter2)
    @dice = Dice.new(6)
    @game = Game.new([@player1, @player2], @board, @dice)
  end

  def test_player_has_won()
    @player1.move_counter(50)
    result = @game.check_winner(@player1)
    assert_equal(true, result)
  end

  def test_can_take_turn()
    @game.take_turn(@player1)
    result = @player1.counter.position
    numbers = [1,2,3,4,5,6]
    assert_equal(true, numbers.include?(result))
  end

  def test_play_game
    @game.play()
    assert_equal(true, @game.isWon)
  end

  def test_modifier
    @player1.move_counter(6)
    @game.landed_on_modifier(@player1)
    assert_equal(9, @player1.counter.position)
  end
end
