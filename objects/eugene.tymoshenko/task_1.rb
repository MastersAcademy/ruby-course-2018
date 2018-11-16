require './game_actions'

class MarioGame
  include GameActions
  attr_accessor :level_background, :count_of_enemies, :speed_enemies, :level_number

  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    self.background    = level_background
    self.enemies       = count_of_enemies
    self.speed_enemies = speed_enemies
    self.level_number  = level_number
  end
end

class TerrariaGame
  include GameActions
  attr_accessor :level_background, :count_of_enemies, :speed_enemies, :level_number, :weather

  def initialize(level_background, count_of_enemies, speed_enemies, level_number, weather)
    self.background    = level_background
    self.enemies       = count_of_enemies
    self.speed_enemies = speed_enemies
    self.level_number  = level_number
    self.weather       = weather
  end
end
