require './extramodule'
# Cheesegame game
class Cheesegame
  include Extension
  attr_accessor :level_background, :count_of_enemies, :speed_enemies, :level_number

  def speed
    "#{@speed_enemies}.to_s" + ' miles/h'
  end

  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end
end

Cheesegame.new(9, 3, 7, 4).show_count_of_enemies
