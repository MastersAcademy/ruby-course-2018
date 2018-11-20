require './game'

class MortalVombat
  include Game
  include ShowHelper
  include ChangeHelper

  attr_accessor :angry,
                :level_number,
                :count_of_enemies

  def initialize(level_number, count_of_enemies, angry)
    @level_number = level_number
    @enemies = count_of_enemies
    @angry = angry
  end

  def play
    if @angry&&@enemies.zero?
      puts 'You are a pacifist, you can not be afraid. You move to next level..'
    end
  end

  def kill
    puts 'You kill yourself. Go to work'
  end

  def change_angry(new_count_angry)
    @angry = new_count_angry
  end

  def show_count_angry
    puts "Count of angry on level is: #{@angry}"
  end
end

vombat = MortalVombat.new(1, 0, 0)
vombat.play
sleep 1
vombat.change_level(1)
vombat.change_counf_of_enemies(15)
vombat.change_angry(10)
sleep 1
vombat.show_level
vombat.show_count_of_enemies
vombat.show_count_angry
sleep 1
vombat.kill
