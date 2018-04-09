class Player

  attr_reader :name, :counter

  def initialize(name, counter)
    @name = name
    @counter = counter
  end

  def roll_dice(dice)
    moves = dice.roll()
    move_counter(moves)
    return moves
  end


  def move_counter(moves)
    @counter.move(moves)
  end

end
