module GameExtensions
  attr_accessor :level_background, :count_of_enemies, :speed_enemies, :level_number

  def show_background
    "Level background is: #{@background}"
  end

  def show_speed_enemies
    "Enemies' speed is: #{@speed_enemies}"
  end

  def show_count_of_enemies
    "Count of enemies on level is: #{@enemies}"
  end

  def show_level_number
    "Level is: #{@level_number}"
  end

  def assign(level_background, count_of_enemies, speed_enemies, level_number)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end
end

class Tetris
  include GameExtensions

  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    assign(level_background, count_of_enemies, speed_enemies, level_number)
  end
end

class MarioGame
  include GameExtensions

  FINAL_LEVEL = 20

  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    assign(level_background, count_of_enemies, speed_enemies, level_number)
    final_level
  end

  def final_level
    if ObjectSpace.each_object(self.class).count >= FINAL_LEVEL
      puts "You're on final level"
    end
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

level_background = 1
count_of_enemies = 1
speed_enemies = 1
level_number = 1

20.times do
  MarioGame.new(level_background, count_of_enemies, speed_enemies, level_number)
end