require_relative 'games_methods'

class TanksGame

  attr_accessor :level_map
  include GamesMethods

  def initialize(level_background, count_of_enemies, speed_enemies, level_number, level_map)
    @lev_map = level_map
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end

  def level_map (new_level_map)
    @lvl_map = new_level_map
  end

  def show_level_map
    "Level map is: #{@lvl_map}"
  end

end

80.times {TanksGame.new(1, 20, 1, 1, 1)}
