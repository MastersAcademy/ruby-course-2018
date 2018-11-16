require_relative 'initializer'
module GameModuls
  def show_level_number
    "Namber of level is: #{@level_number}"
  end

  def show_background_color
    "background color is: #{@background}"
  end

  def show_speed_of_enemies
    "Speed of enemies is: #{@speed_enemies}"
  end
end
