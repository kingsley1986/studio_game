class LoadedDie
  attr_reader :number

  def roll
    number = [1, 1, 2, 5, 6, 6]
    @number = number.sample
  end
end