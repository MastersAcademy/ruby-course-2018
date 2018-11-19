require_relative 'games_methods'

class MarioGame

  include GamesMethods
  
  FINAL_LVL = 20

  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end

  def self.all_lvl
    ObjectSpace.each_object(self).to_a
  end

  if all_lvl.count == FINAL_LVL
    final_level
  end

end

lvl_bground = 1
cnt_of_enems = 15
spd_enems = 1 
lvl_number = 1

TanksGame.new(lvl_bground, cnt_of_enems, spd_enems, lvl_number)
