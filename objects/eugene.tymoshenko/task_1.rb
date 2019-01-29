require_relative 'game_actions'

class MarioGame
  include GameActions
  attr_accessor :level_background, :count_of_enemies, :enemies_speed, :level_number

  def initialize(level_background, count_of_enemies, enemies_speed, level_number)
    self.level_background = level_background
    self.count_of_enemies = count_of_enemies
    self.enemies_speed    = enemies_speed
    self.level_number     = level_number
  end
end

class TerrariaGame
  include GameActions
  attr_accessor :level_background, :count_of_enemies, :enemies_speed, :level_number, :weather

  def initialize(level_background, count_of_enemies, enemies_speed, level_number, weather)
    self.level_background = level_background
    self.count_of_enemies = count_of_enemies
    self.enemies_speed    = enemies_speed
    self.level_number     = level_number
    self.weather          = weather
  end
end
