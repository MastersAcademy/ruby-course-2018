require './game'

class MarioGame
  include Game
  attr_accessor(
    :level_background,
    :count_of_enemies,
    :speed_enemies,
    :level_number,
  )

  def initialize(level_background, count_of_enemies, speed_enemies, level_number)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end

  def final_level
    if level_number == 20
      puts 'You Winner!! This is last level in this game'
      File.open('./mario.txt', "r") do |f|
        f.each_line do |line|
          print line.to_s
        end
      end
    else
      puts "Info for level: #{level_number}"
      sleep 1
      puts "Background is #{@background}"
      puts "Enemies on level #{@enemies}"
      puts "Speed your enemies #{speed_enemies} mPh"
      sleep 1
      puts 'Next level...'
      sleep 0.5
    end
  end
end

#not DRY, but I do not know yet another solution, maybe it can be done in short loops or while cycle(
mario1 = MarioGame.new('white', 1, 1, 1)
mario1.final_level
mario2 = MarioGame.new('green', 12, 3, 2)
mario2.final_level
mario3 = MarioGame.new('white', 1, 5, 3)
mario3.final_level
mario4 = MarioGame.new('white', 13, 10, 4)
mario4.final_level
mario5 = MarioGame.new('white', 4, 16, 5)
mario5.final_level
mario6 = MarioGame.new('white', 1, 17, 6)
mario6.final_level
mario7 = MarioGame.new('white', 12, 19, 7)
mario7.final_level
mario8 = MarioGame.new('white', 1, 21, 8)
mario8.final_level
mario9 = MarioGame.new('white', 12, 22, 9)
mario9.final_level
mario10 = MarioGame.new('white', 1, 25, 10)
mario10.final_level
mario11 = MarioGame.new('white', 1, 27, 11)
mario11.final_level
mario12 = MarioGame.new('white', 1, 30, 12)
mario12.final_level
mario13 = MarioGame.new('white', 12, 35, 13)
mario13.final_level
mario14 = MarioGame.new('white', 1, 37, 14)
mario14.final_level
mario15 = MarioGame.new('white', 1, 39, 15)
mario15.final_level
mario16 = MarioGame.new('white', 21, 45, 16)
mario16.final_level
mario17 = MarioGame.new('white', 18, 49, 17)
mario17.final_level
mario18 = MarioGame.new('white', 134, 58, 18)
mario18.final_level
mario19 = MarioGame.new('Smeragl', 12, 60, 19)
mario19.final_level
mario20 = MarioGame.new('Blue', 1100, 78, 20)
mario20.final_level
