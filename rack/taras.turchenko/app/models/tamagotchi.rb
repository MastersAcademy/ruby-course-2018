# frozen_string_literal: true

# Tamagotchi model
class Tamagotchi
  attr_accessor :health, :hunger, :happiness, :sleepiness, :event

  MIN = 0
  MAX = 100
  STEP = 10

  def initialize
    self.health = MAX
    self.hunger = MAX / 2
    self.happiness = MAX / 2
    self.sleepiness = MAX / 2
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
    when 0..33 then :sad
    when 34..75 then :worried
    else :happy
    end
  end

  def dead?
    health.zero?
  end

  def play
    increase_attr :happiness
    self.event = :play
  end

  def increase_attr(attr)
    value = send(attr) + STEP
    setter = (attr.to_s + '=').to_sym
    if value > MAX
      send(setter, MAX)
      self.health -= STEP
    elsif value < MIN
      send(setter, MIN)
      self.health -= STEP
    else
      send(setter, value)
    end
  end

  def feed
    increase_attr :hunger
    self.event = :feed
  end
end