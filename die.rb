require_relative 'auditable'

class Die
  include Auditable
  attr_reader :number
  
  def initialize
    roll
  end
  
  def roll
    @number = [1, 1, 2, 5, 6, 6]
    @number = number.sample
    audit
    @number
  end
end

if __FILE__ == $0
  die = Die.new
  puts die.roll
  puts die.roll
  puts die.roll
end