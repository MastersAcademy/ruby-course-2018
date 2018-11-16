
#В нас зроблена гра Маріо, на основі классу MarioGame, кожен новий рівень, це окремий інстанс класу. Наприклад гра має 20 рівнів, і інстанси оголошуються наступним чином:

#mario1 = MarioGame.new
#mario2 = MarioGame.new
#.......................
#mario20 = MarioGame.new
#І от на останньому рівні в нас має бути метод, який виводить фінальну заставку гри, яка не доступна на інших рівнях.

class MarioGame

  attr_accessor :level_background, :count_of_enemies, :speed_enemies, :level_number

  require_relative 'task1'
  include GamesMethods
  require 'objspace'

  FINAL_LVL = 20

  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end

  def self.all_lvl
    ObjectSpace.each_object(self).to_a
  end

  if all_lvl.count == FINAL_LVL
    final_level #this method in module GamesMethods
  end

end
