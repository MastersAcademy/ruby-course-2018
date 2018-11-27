# This is module Extramodule for our games
module Extramodule
  attr_accessor :level_background, :count_of_enemies, :speed_enemies, :level_number

  def show_count_of_enemies
    puts "Number of enemies: #{@enemies}"
  end

  def show_level_background
    puts "Background level is: #{@background}"
  end

  def show_speed_enemies
    puts "Level of enemies speed is: #{@speed_enemies}"
  end

  def show_level_number
    puts "Level number is: #{@level_number}"
  end
end
