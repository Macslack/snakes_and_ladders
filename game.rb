

class Game

  attr_reader :isWon

  def initialize(players, board, dice)
    @players = players
    @board = board
    @dice = dice
    @isWon = false
  end

  def check_winner(player)
    return player.counter.position >= @board.number_of_squares
  end

  def take_turn(player)
    player.roll_dice(@dice)
  end

  def play()
    while(!@isWon) do
      take_turn(@players[0])
      landed_on_modifier(@players[0])
      @isWon = check_winner(@players[0])
      @players.rotate
    end
  end

  def landed_on_modifier(player)
    for modifier in @board.snakes_and_ladders
      if player.counter.position == modifier.start_point
        player.move_counter(modifier.moves)
      end
    end
  end


end
