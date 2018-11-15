
#В нас зроблена гра Маріо, на основі классу MarioGame, кожен новий рівень, це окремий інстанс класу. Наприклад гра має 20 рівнів, і інстанси оголошуються наступним чином:

#mario1 = MarioGame.new
#mario2 = MarioGame.new
#.......................
#mario20 = MarioGame.new
#І от на останньому рівні в нас має бути метод, який виводить фінальну заставку гри, яка не доступна на інших рівнях.

class MarioGame
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
end
