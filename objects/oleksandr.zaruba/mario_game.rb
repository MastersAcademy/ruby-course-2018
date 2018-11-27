require_relative 'initializer'
class MarioGame
  include GameModuls

  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    @level_background = level_background
    @count_of_enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end

  # Second task

  def last_level
    if @level_number == 20
      show_final_screen
    elsif p "Your level is #{level_number},to finish game you need: 20"
    end
  end

  def show_final_screen
    file = File.open('final.txt', 'r') do |text|
      text.each_line { |line| print line }
    end
    file.close
  end
end

mario1 = MarioGame.new(1, 3, 1, 1)
mario2 = MarioGame.new(1, 5, 1, 2)
mario3 = MarioGame.new(2, 7, 1, 3)
mario4 = MarioGame.new(2, 9, 1, 4)
mario5 = MarioGame.new(3, 11, 2, 5)
mario6 = MarioGame.new(3, 13, 2, 6)
mario7 = MarioGame.new(4, 15, 2, 7)
mario8 = MarioGame.new(4, 17, 2, 8)
mario9 = MarioGame.new(5, 19, 3, 9)
mario10 = MarioGame.new(5, 21, 3, 10)
mario11 = MarioGame.new(6, 23, 3, 11)
mario12 = MarioGame.new(6, 25, 3, 12)
mario13 = MarioGame.new(7, 27, 4, 13)
mario14 = MarioGame.new(7, 29, 4, 14)
mario15 = MarioGame.new(8, 31, 4, 15)
mario16 = MarioGame.new(8, 33, 4, 16)
mario17 = MarioGame.new(9, 35, 5, 17)
mario18 = MarioGame.new(9, 37, 5, 18)
mario19 = MarioGame.new(10, 39, 5, 19)
mario20 = MarioGame.new(10, 41, 5, 20)

p mario5.show_count_of_enemies
p mario5.show_level_number
p mario5.show_background_color
p mario5.show_speed_of_enemies
mario19.last_level
