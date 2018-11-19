require "output_methods"

class NewGame
  include OutPutMethods

  def initialize(level_number, background, speed, name)
    @level_number = level_number
    @background = background
    @speed_enemies = speed
    @name = name
  end

  def game_method
    "Hello, I am method #{@name}"
  end

end 

p NewGame.new(6,7,8, "One").game_method
p NewGame.new(6,7,8, "One").show_level_number
p NewGame.new(6,7,8, "One").background
p NewGame.new(6,7,8, "One").show_speed_enemies