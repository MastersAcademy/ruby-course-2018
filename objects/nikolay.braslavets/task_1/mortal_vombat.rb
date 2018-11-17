require './game'

class MortalVombat
  include Game
  attr_accessor(
    :angry,
    :level_number,
    :count_of_enemies,
  )

  def initialize
    @level_number = level_number
    @enemies = count_of_enemies
    @angry = angry
  end

  level_number, count_of_enemies, angry = 1, 0, 0

  def vombat_start
    unless angry || count_of_enemies == 0
      puts 'You are a pacifist, you can not be afraid. On this level...'
    end
  end

MortalVombat.new.vombat_start
sleep 0.5
puts "You on #{level_number} level, you has #{count_of_enemies} enemies."
sleep 0.5
puts 'See you letter'
end
