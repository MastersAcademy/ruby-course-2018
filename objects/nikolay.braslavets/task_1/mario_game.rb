require './game'

class MarioGame
  include Game
  include ShowHelper

  attr_accessor :level_background,
                :count_of_enemies,
                :speed_enemies,
                :level_number

  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    self.level_background = level_background
    self.count_of_enemies = count_of_enemies
    self.speed_enemies = speed_enemies
    self.level_number = level_number
  end

  def go_work
    puts 'No more game. Go to work.'
  end
end

mario = MarioGame.new('white', 13, 45, 17)
mario.show_level
mario.show_background_color
mario.show_count_of_enemies
mario.show_speed_enemies
sleep 1
mario.go_work
