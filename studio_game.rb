require_relative 'player'
require_relative 'game'
require_relative 'clumsy_player'
require_relative 'berserk_player'

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)


knuckleheads = Game.new("knuckleheads")
knuckleheads.load_players(ARGV.shift || "players.csv")

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player3)
knuckleheads.add_player(player2)
knuckleheads.add_player(player1)

klutz = ClumsyPlayer.new("klutz", 105)
knuckleheads.add_player(klutz)

berserker = BerserkPlayer.new("berserk", 50)
knuckleheads.add_player(berserker)


loop do

  puts "\nhow many viewings? ('quit' to exit)"
  answer = gets.chomp.downcase
  case answer
  when /^\d+$/
    knuckleheads.play(answer.to_i)
  when 'quit', 'exit'
    knuckleheads.print_stats
  break
  else
    puts "please enter your number or quit"
  end
end
 
knuckleheads.save_high_scores