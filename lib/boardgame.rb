class Dice
  
  def roll_confirm
    return "Dice rolled!"
  end

  def roll
    Kernel.rand(1..6)
  end

  def roll_multiple(number_of_rolls)
    roll_results = []
    while number_of_rolls > 0 do
      roll_results << roll
      number_of_rolls -= 1
    end
    return roll_results
  end
end