require './extension'
# Tamagochi game
class Tamagochi
  include Extension
  attr_accessor :level_background, :count_of_enemies, :speed_enemies, :level_number

  def speed
    "#{@speed_enemies}.to_s" + ' km'
  end

  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end
end

puts Tamagochi.new(1, 2, 3, 4).show_count_of_enemies
