class Dice

  def initialize(number_of_sides)
    @number_of_sides = number_of_sides
  end

  def roll()
    return rand(1..@number_of_sides)
  end

end
