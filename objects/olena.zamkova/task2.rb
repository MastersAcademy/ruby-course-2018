module General
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

  def show_level
    "Level is: #{@level_number}"
  end

  def show_background_color
    "Background is set to: #{@background}"
  end

  def show_speed_of_enemies
    "Speed of enemies is set to: #{@speed_enemies}"
  end

  def show_count_of_enemies
    "Count of enemies on level is: #{@enemies}"
  end
end

module Final
  def congratulate
    '=======Congrats!========'
  end
end

class MarioGame
  include General

  attr_accessor :level_background, :count_of_enemies, :speed_enemies, :level_number

  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end
end

p '======Mario======'
mario20 = MarioGame.new('dark gray', 50, 20, 20)
p mario20.show_level
p mario20.show_background_color
mario20.change_background('blue')
p mario20.show_background_color
p mario20.show_speed_of_enemies
p mario20.show_count_of_enemies

mario20.singleton_class.include(Final)
p mario20.congratulate
