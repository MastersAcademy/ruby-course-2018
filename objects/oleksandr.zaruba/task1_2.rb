require_relative 'initializer'
class Excitebike
  include GameModuls

  attr_accessor :level_background, :count_of_obstacles, :obstacles_speed, :level_number

  def initialize(level_background, count_of_obstacles, obstacles_speed, level_number)
    @background = level_background
    @obstacles = count_of_obstacles
    @speed_obstacles = obstacles_speed
    @level_number = level_number
  end

  def change_level(new_level_number)
    @level_number = new_level_number
  end

  def change_background(new_background_color)
    @background = new_background_color
  end

  def change_obstacles_speed(new_obstacles_speed)
    @speed_obstacles = new_obstacles_speed
  end

  def show_speed_of_obtacles
    "Speed of obstacles is: #{@speed_obstacles}"
  end

  def change_count_of_obstacles(new_count_of_obstacles)
    @obstacles = new_count_of_obstacles
  end

  def show_count_of_obstacles
    "Count of obstacles on level is: #{@obstacles}"
  end
end
