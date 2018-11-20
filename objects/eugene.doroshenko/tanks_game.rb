require_relative 'games_methods'

class TanksGame

  include GamesMethods

  def initialize(level_background, count_of_enemies, speed_enemies, level_number, level_map)
    @lvl_map = level_map
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end

  def change_map(new_level_map)
    @lvl_map = new_level_map
  end

  def show_level_map
    "Level map is: #{@lvl_map}"
  end

end

puts TanksGame.new(5, 50, 5, 2, 5).show_level_map

80.times {TanksGame.new(1, 20, 1, 1, 1)}
