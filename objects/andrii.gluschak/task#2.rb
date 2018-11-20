module GameFeature
  def show_count_of_enemies
    "Count of enemies on level is: #{@enemies}"
  end

  def show_speed_of_enemies
    "show speed of enemies is: #{@speed_enemies}"
  end

  def show_level_background
    "show level background is:#{@background}"
  end

  def show_level_number
    "show level number is:#{@level_number}"
  end
end
class MarioGame
  include GameFeature
  LEVEL = 20
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

  def final_message
    if ObjectSpace.each_object(MarioGame).count == LEVEL
    p "You, Win"
    end
  end
end

class Crash
  include GameFeature
  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end
end
mario1 = MarioGame.new(1, 2, 2, 1)
mario2 = MarioGame.new(3, 4, 2, 9)
mario3 = MarioGame.new(3, 4, 2, 9)
mario4 = MarioGame.new(3, 4, 2, 9)
mario5 = MarioGame.new(3, 4, 2, 9)
mario6 = MarioGame.new(3, 4, 2, 9)
mario7 = MarioGame.new(3, 4, 2, 9)
mario8 = MarioGame.new(3, 4, 2, 9)
mario9 = MarioGame.new(3, 4, 2, 9)
mario10 = MarioGame.new(3, 4, 2, 9)
mario11 = MarioGame.new(3, 4, 2, 9)
mario12 = MarioGame.new(3, 4, 2, 9)
mario13 = MarioGame.new(3, 4, 2, 9)
mario14 = MarioGame.new(3, 4, 2, 9)
mario15 = MarioGame.new(3, 4, 2, 9)
mario16 = MarioGame.new(3, 4, 2, 9)
mario17 = MarioGame.new(3, 4, 2, 9)
mario18 = MarioGame.new(3, 4, 2, 9)
mario19 = MarioGame.new(1, 4, 2, 1)
mario20 = MarioGame.new(3, 5, 6, 7)
mario20.final_message
