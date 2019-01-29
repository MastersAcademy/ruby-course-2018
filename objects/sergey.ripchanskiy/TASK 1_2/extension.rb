# This is module Extencion for our games
module Extension
  attr_accessor :level_background, :count_of_enemies, :speed_enemies, :level_number

  def show_count_of_enemies
    "Count of enemies on level is: #{@enemies}"
  end

  def show_level_background
    "Background level is: #{@background}"
  end

  def show_speed_enemies
    "Speed of enemies is: #{@speed_enemies}"
  end

  def show_level_number
    "Nnumber of level is: #{@level_number}"
  end
end
