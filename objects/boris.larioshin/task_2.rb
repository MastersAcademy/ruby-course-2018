require './base_game'
# class include the module
class MarioGame
  include BaseGame
  attr_accessor :level_background,
                :count_of_enemies,
                :speed_enemies,
                :level_number

  def initialize(level_background,
                 count_of_enemies,
                 speed_enemies,
                 level_number)
    self.level_background = level_background
    self.count_of_enemies = count_of_enemies
    self.speed_enemies = speed_enemies
    self.level_number = level_number
  end

  def self.final
    last_instance = ObjectSpace.each_object(self).to_a.first
    last_instance.instance_eval do
      def final_game
        'Game over'
      end
    end
  end
end

broter_mario_1 = MarioGame.new('Grass', 5, 1, 1)
broter_mario_2 = MarioGame.new('Sand', 6, 2, 2)
broter_mario_3 = MarioGame.new('Underground', 7, 3, 3)
broter_mario_4 = MarioGame.new('Castle', 8, 4, 4)
broter_mario_5 = MarioGame.new('Hell', 9, 5, 5)
MarioGame.final
puts broter_mario_5.final_game