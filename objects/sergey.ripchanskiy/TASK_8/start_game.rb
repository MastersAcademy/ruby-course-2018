require './mario'

game = true
start_game = Mario.new
while game
  break if start_game.end_game?
  puts 'To move forward type "step"'
  command = gets.chomp.to_sym
  if start_game.methods.include?(command)
    start_game.send(command.to_sym)
  elsif command == :exit
    break
  else
    puts 'What do you want from me, buddy?'
    puts 'For exit the game? type "exit"'
  end
end
