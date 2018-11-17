require './mario'

game = true
current_game = Mario.new
loop do game
  break if current_game.end_game?
  puts 'To move forward type "step"'
  command = gets.chomp.to_sym
  if current_game.methods.include?(command)
    current_game.send(command.to_sym)
  elsif command == :exit
    break
  else
    puts 'What do you want from me, buddy?'
    puts 'For exit the game? type "exit"'
  end
end
