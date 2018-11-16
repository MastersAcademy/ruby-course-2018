module MarioActions
  def change_level(new_level_number)
    @level_number = new_level_number
  end

  def change_background(new_background_color)
    @background = new_background_color
  end

  def change_speed_enemies(new_speed_enemies)
    @speed_enemies = new_speed_enemies
  end

  def change_count_of_enemies(new_count_of_enemies)
    @enemies = new_count_of_enemies
  end

  def show_count_of_enemies
    "Count of enemies on level is: #{@enemies}"
  end

  def show_level_number
    "Current level is: #{@level_number}"
  end

  def show_background
    "Current background is: #{@background}"
  end

  def show_enemies_speed
    "Enemies speed is: #{@speed_enemies}"
  end
end

class MarioGame
  attr_accessor :level_background, :count_of_enemies, :speed_enemies, :level_number
  include MarioActions

  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end
end

class TerrariaGame
  include MarioActions
  attr_accessor :level_background, :count_of_enemies, :speed_enemies, :level_number, :weather

  def initialize(level_background, count_of_enemies, speed_enemies, level_number, weather)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
    @weather = weather
  end

  def change_weather(weather)
    @weather = weather
  end

  def show_weather
    "Current weather is: #{@weather}"
  end
end
