require './initializer'
module GameModuls
  attr_accessor :level_background, :level_number, :count_of_enemies, :speed_enemies

  # setters

  def change_level(new_level_number)
    @level_number = new_level_number
  end

  def change_background(new_background_color)
    @level_background = new_background_color
  end

  def change_speed_enemies(new_speed_enemies)
    @speed_enemies = new_speed_enemies
  end

  def change_counf_of_enemies(new_count_of_enemies)
    @enemies = new_count_of_enemies
  end

  # getters

  def show_count_of_enemies
    "Count of enemies on level is: #{count_of_enemies}"
  end

  def show_level_number
    "Namber of level is: #{level_number}"
  end

  def show_background_color
    "background color is: #{level_background}"
  end

  def show_speed_of_enemies
    "Speed of enemies is: #{speed_enemies}"
  end
end
