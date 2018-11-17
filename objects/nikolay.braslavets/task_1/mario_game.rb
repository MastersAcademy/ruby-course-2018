require './game'

class MarioGame
  include Game
  attr_accessor(
    :level_background,
    :count_of_enemies,
    :speed_enemies,
    :level_number,
  )

  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end

  level_background, count_of_enemies, speed_enemies, level_number = 1, 3, 45, 1

  puts "New game start in background lvl #{level_background}, and lvl game #{level_number}"
  sleep 1
  puts "Eniemies on level #{count_of_enemies}, his speed #{speed_enemies} mPh"
  sleep 1
  puts "Im gome"
end
