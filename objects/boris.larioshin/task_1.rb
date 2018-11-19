require './task_1_module'
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
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
  end
end
# create class for my game
class Sonic
  include BaseGame
  attr_accessor :level_background,
                :count_of_enemies,
                :speed_enemies,
                :level_number,
                :hero_speed,
                :hero_health

  def initialize(level_background,
                 count_of_enemies,
                 speed_enemies,
                 level_number,
                 hero_speed,
                 hero_health)
    @background = level_background
    @enemies = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number = level_number
    @hero_speed = hero_speed
    @hero_health = hero_health
  end

  def change_speed_hero(new_hero_speed)
    @hero_speed = new_hero_speed
  end

  def change_health_hero(new_hero_health)
    @hero_health = new_hero_health
  end

  def show_hero_speed
    "Sonic runs: #{hero_speed}"
  end

  def show_hero_health
    "Sonic health: #{hero_health}"
  end
end
