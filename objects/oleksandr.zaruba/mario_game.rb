require_relative 'initializer'
class MarioGame
  include GameModuls
  attr_accessor :level_background, :count_of_enemies, :speed_enemies, :level_number

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

  def show_count_of_enemies
    "Count of enemies on level is: #{@enemies}"
  end

  def last_level
    show_final_screen if @level_number == 20
  end

  def show_final_screen
    file = File.open('final.txt', 'r') do |text|
      text.each_line { |line| print line }
    end
    file.close
  end
end

mario = MarioGame.new(1, 20, 3, 20)
p mario.show_count_of_enemies
p mario.show_level_number
p mario.show_background_color
p mario.show_speed_of_enemies
p mario.last_level

biker = Excitebike.new(5, 6, 7, 8)
p biker.show_count_of_obstacles
p biker.show_level_number
p biker.show_background_color
p biker.show_speed_of_obtacles
