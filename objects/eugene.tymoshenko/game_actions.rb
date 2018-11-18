module GameActions
  def change_level(new_level_number)
    self.level_number = new_level_number
  end

  def change_background(new_background_color)
    self.level_background = new_background_color
  end

  def change_speed_enemies(new_speed_enemies)
    self.speed_enemies = new_speed_enemies
  end

  def change_count_of_enemies(new_count_of_enemies)
    self.count_of_enemies = new_count_of_enemies
  end

  def show_count_of_enemies
    "Count of enemies on level is: #{count_of_enemies}"
  end

  def show_level_number
    "Current level is: #{level_number}"
  end

  def show_background
    "Current background is: #{level_background}"
  end

  def show_enemies_speed
    "Enemies speed is: #{speed_enemies}"
  end
end
