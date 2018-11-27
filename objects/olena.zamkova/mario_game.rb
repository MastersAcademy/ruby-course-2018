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

class PacManGame
  include General

  attr_accessor :level_background, :count_of_enemies, :speed_enemies, :level_number, :energizer_time, :score

  def initialize(level_background, count_of_enemies, speed_enemies, level_number, energizer_time, score)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
    @energizer_time = energizer_time
    @score = score
  end

  def change_energizer_action_time(new_energizer_time)
    @energize_time = new_energizer_time
  end

  def add_score
    @score += 1
  end

  def show_energize_time_left(time_energize_in_effect)
    "Energizer time left: #{@energize_time - time_energize_in_effect}"
  end

  def show_score
    "Total score is: #{@score}"
  end
end

p '======Mario======'
mario1 = MarioGame.new('green', 5, 1, 1)
p mario1.show_level
p mario1.show_background_color
mario1.change_background('blue')
p mario1.show_background_color
p mario1.show_speed_of_enemies
p mario1.show_count_of_enemies

p '======Pac-Man======'
pac_man1 = PacManGame.new('pink', 7, 1, 1, 10, 0)
p pac_man1.show_level
p pac_man1.show_background_color
pac_man1.change_background('yellow')
p pac_man1.show_background_color
p pac_man1.show_speed_of_enemies
p pac_man1.show_count_of_enemies
p pac_man1.show_score
pac_man1.add_score
p pac_man1.show_score
