module MarioActions
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

  def show_count_of_enemies
    "Count of enemies on level is: #{@enemies}"
  end

  def show_level_number
    "Current level is: #{@level_number}"
  end

  def show_background
    "Current background is: #{@background}"
  end

  def show_enemies_speed
    "Enemies speed is: #{@speed_enemies}"
  end
end

class MarioGame
  attr_accessor :level_background, :count_of_enemies, :speed_enemies, :level_number
  include MarioActions
  LEVELS = 20
  def initialize(level_background, count_of_enemies, speed_enemies)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    define_singleton_method(:final_game_screen, -> { 'last level reached' }) if ObjectSpace.each_object(MarioGame).count == LEVELS
  end

  def final_game_screen; end
end

mario1 = MarioGame.new('green', 5, 1)
mario2 = MarioGame.new('green', 10, 2)
mario3 = MarioGame.new('green', 15, 3)
mario4 = MarioGame.new('green', 20, 4)
mario5 = MarioGame.new('green', 25, 5)
mario6 = MarioGame.new('green', 30, 6)
mario7 = MarioGame.new('green', 35, 7)
mario8 = MarioGame.new('green', 40, 8)
mario9 = MarioGame.new('green', 45, 9)
mario10 = MarioGame.new('green', 50, 10)
mario11 = MarioGame.new('green', 55, 10)
mario12 = MarioGame.new('green', 60, 10)
mario13 = MarioGame.new('green', 65, 10)
mario14 = MarioGame.new('green', 70, 10)
mario15 = MarioGame.new('green', 75, 10)
mario16 = MarioGame.new('green', 80, 10)
mario17 = MarioGame.new('green', 85, 10)
mario18 = MarioGame.new('green', 90, 10)
mario19 = MarioGame.new('green', 95, 10)
mario20 = MarioGame.new('green', 100, 10)


puts mario19.final_game_screen
puts '==='
puts mario20.final_game_screen