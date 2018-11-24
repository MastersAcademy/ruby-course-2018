require './base_game'
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
    self.level_background = level_background
    self.count_of_enemies = count_of_enemies
    self.speed_enemies = speed_enemies
    self.level_number = level_number
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
    self.level_background = level_background
    self.count_of_enemies = count_of_enemies
    self.speed_enemies = speed_enemies
    self.level_number = level_number
    self.hero_speed = hero_speed
    self.hero_health = hero_health
  end

  def change_speed_hero(new_hero_speed)
    self.hero_speed = new_hero_speed
  end

  def change_health_hero(new_hero_health)
    self.hero_health = new_hero_health
  end

  def show_hero_speed
    "Sonic runs: #{hero_speed}"
  end

  def show_hero_health
    "Sonic health: #{hero_health}"
  end
end
