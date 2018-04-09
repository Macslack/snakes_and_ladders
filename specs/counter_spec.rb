require('minitest/autorun')
require_relative('../counter.rb')

class CounterTest < MiniTest::Test

  def setup()
    @counter = Counter.new("Red")
  end

  def test_counter_can_move
    @counter.move(5)
    assert_equal(5, @counter.position)

  end


end
