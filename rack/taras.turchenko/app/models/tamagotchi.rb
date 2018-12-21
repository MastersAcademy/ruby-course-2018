# frozen_string_literal: true

# Tamagotchi model
class Tamagotchi
  attr_accessor :health, :hunger, :happiness, :sleepiness, :event

  def initialize
    self.health = 100
    self.hunger = 100
    self.happiness = 100
    self.sleepiness = 100
  end

  def capture_attrs
    {
      health: health,
      hunger: hunger,
      happiness: happiness,
      sleepiness: sleepiness,
      mood: mood,
      event: event,
      dead: dead?
    }
  end

  def mood
    case health
    when 0..33 then 'sad'
    when 34..75 then 'worried'
    else 'happy'
    end
  end

  def dead?
    health.zero?
  end
end