require './extramodule'

class Cheesegame
  include Extramodule

  def speed
    puts "Speed of the enemies: #{@speed_enemies} miles/h"
  end

  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end
end

Cheesegame.new(9, 3, 170, 4).show_speed_enemies
Cheesegame.new(9, 3, 70, 4).speed

