require_relative 'game_constructor'

class MarioGame
  include GameConstructor
end

class BattleToads
  include GameConstructor
  attr_reader :toad_health, :toad_strength, :toad_speed

  def initialize(toad_health: 0,
                toad_speed: 0,
                toad_strength: 0,
                level_background: 0,
                count_of_enemies: 0,
                speed_enemies: 0,
                level_number: 0)
    @toad_health   = toad_health
    @toad_speed    = toad_speed
    @toad_strength = toad_strength
    @background    = level_background
    @enemies       = count_of_enemies
    @speed_enemies = speed_enemies
    @level_number  = level_number
  end

  def change_toad_health(new_toad_health)
    @toad_health = new_toad_health
  end

  def change_toad_speed(new_toad_speed)
    @toad_speed = new_toad_speed
  end

  def change_toad_strength(new_toad_strength)
    @toad_strength = new_toad_strength
  end

  def show_toad_health
    "Toad health is: #{toad_health}"
  end

  def show_toad_speed
    "Toad speed is: #{toad_speed}"
  end

  def show_toad_strength
    "Toad strength is: #{toad_strength}"
  end
end
