class Board

  attr_reader :number_of_squares

  def initialize(number_of_squares, snakes_and_ladders)
    @number_of_squares = number_of_squares
    @snakes_and_ladders = snakes_and_ladders
  end

  def snakes_and_ladders()
    return @snakes_and_ladders.map {|snake_or_ladder| snake_or_ladder.dup}
  end

end
