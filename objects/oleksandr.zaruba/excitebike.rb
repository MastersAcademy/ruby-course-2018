require './initializer'
class Excitebike
  include GameModuls

  attr_accessor :count_of_obstacles, :obstacles_speed

  def initialize(level_background, count_of_obstacles, obstacles_speed, level_number)
    @level_background = level_background
    @count_of_obstacles = count_of_obstacles
    @obstacles_speed = obstacles_speed
    @level_number = level_number
  end

  def change_level(new_level_number)
    @level_number = new_level_number
  end

  def change_background(new_background_color)
    @level_background = new_background_color
  end

  def change_obstacles_speed(new_obstacles_speed)
    @obstacles_speed = new_obstacles_speed
  end

  def show_speed_of_obtacles
    "Speed of obstacles is: #{obstacles_speed}"
  end

  def change_count_of_obstacles(new_count_of_obstacles)
    @count_of_obstacles = new_count_of_obstacles
  end

  def show_count_of_obstacles
    "Count of obstacles on level is: #{count_of_obstacles}"
  end
end

biker = Excitebike.new(5, 6, 7, 8)
p biker.show_count_of_obstacles
p biker.show_level_number
p biker.show_background_color
p biker.show_speed_of_obtacles
