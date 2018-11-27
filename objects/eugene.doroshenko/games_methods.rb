module GamesMethods

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

  def show_enemy_speed
    "Enemy speed is: #{@speed_enemies}"
  end

  def show_level
    "Level #{@level_number}"
  end

  def show_background
    "Level background #{@background}"
  end

  def final_level
    puts 'Sorry, Mario, but your princess in another castle'    
  end

end

