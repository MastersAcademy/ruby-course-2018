class GameConstructor
  attr_accessor :level_background, :count_of_enemies, :speed_enemies, :level_number
  
  def change_level(new_level_number)
    @level_number = new_level_number
  end

  def change_background(new_background_color)
    @background = new_background_color
  end

  def change_speed_enemies(new_speed_enemies)
    @speed_enemies = new_speed_enemies
  end

  def change_counf_of_enemies(new_count_of_enemies)
    @enemies = new_count_of_enemies
  end

  def show_count_of_enemies
    "Count of enemies on level is: #{@enemies}"
  end

  def show_level_background
    "Level_background on level is: #{@level_background}"
  end

  def show_speed_enemies
    "Speed of enemies on level is: #{@speed_enemies}"
  end

  def show_level_number
    "You on level: #{@level_number}"
  end
end