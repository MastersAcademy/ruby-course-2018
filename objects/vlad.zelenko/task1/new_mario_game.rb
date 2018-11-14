require_relative "../../mario_game"
require_relative "output_methods"

class NewMarioGame < MarioGame
  include OutPutMethods
end

p NewMarioGame.new(1,2,3,4).show_level_number
p NewMarioGame.new(1,2,3,4).show_count_of_enemies
p NewMarioGame.new(1,2,3,4).background
p NewMarioGame.new(1,2,3,4).show_speed_enemies