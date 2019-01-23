module GameFeature
  def show_count_of_enemies
    "Count of enemies on level is: #{@enemies}"
  end

  def show_speed_of_enemies
    "show speed of enemies is: #{@speed_enemies}"
  end

  def show_level_background
    "show level background is:#{@background}"
  end

  def show_level_number
    "show level number is:#{@level_number}"
  end
end

class MarioGame
  include GameFeature
  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end

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
end

class Crash
  include GameFeature
  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end
end
MarioGame.new(13, 13, 13, 13)
