class TanksGame

  attr_accessor :level_map

  require_relative 'games_methods'
  include GamesMethods

  def initialize(level_background, count_of_enemies, speed_enemies, level_number, level_map)
    @lev_map = level_map
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end

  def level_map (new_level_map)
    @lev_map = new_count_of_enemies
  end

  def show_level_map
    "Level map is: #{@lev_map}"
  end

end

lvl_bground = 1
cnt_of_enems = 15
spd_enems = 1 
lvl_number = 1
lvl_map = 1

TanksGame.new(lvl_bground, cnt_of_enems, spd_enems, lvl_number, lvl_map)
