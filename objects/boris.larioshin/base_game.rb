# module for basic game
module BaseGame
  def change_level(new_level_number)
    @level_number = new_level_number
  end

  def change_background(new_background_color)
    @level_background = new_background_color
  end

  def change_speed_enemies(new_speed_enemies)
    @speed_enemies = new_speed_enemies
  end

  def change_count_of_enemies(new_count_of_enemies)
    @count_of_enemies = new_count_of_enemies
  end

  def show_level_number
    "The level number: #{level_number}"
  end

  def show_level_background
    "Level background on this level is: #{level_background}"
  end

  def show_speed_enemies
    "The enemies speed is: #{speed_enemies}"
  end

  def show_count_of_enemies
    "Count of enemies on level is: #{count_of_enemies}"
  end
end
