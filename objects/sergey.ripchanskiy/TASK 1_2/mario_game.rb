require './extension'

# Mario game
class MarioGame
  include Extension
  LEVELS = 20

  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
    count = ObjectSpace.each_object(self.class).count
    final_level if count == LEVELS
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

  def change_count_of_enemies(new_count_of_enemies)
    @enemies = new_count_of_enemies
  end

  def final_level
    puts 'This is final level'
  end
end

puts MarioGame.new(1, 2, 3, 4).show_count_of_enemies
puts MarioGame.new(5, 18, 3, 4).show_count_of_enemies
puts MarioGame.new(5, 7, 3, 4).show_count_of_enemies

20.times { MarioGame.new(5, 7, 3, 4) }
