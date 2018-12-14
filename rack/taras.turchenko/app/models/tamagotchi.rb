# frozen_string_literal: true

# Tamagotchi model
class Tamagotchi
  attr_accessor :health

  def initialize
    self.health = 100
  end

  def decrease_health
    self.health = health - 1
    health
  end

  def put_to_bad
    increase_health 15
  end

  def increase_health(value)
    new_health = health + value
    new_health = new_health > 100 ? 100 : new_health
    self.health = new_health
  end

  def play_game
    increase_health 10
  end

  def to_feed
    increase_health 13
  end

  def dead?
    health.negative?
  end
end
