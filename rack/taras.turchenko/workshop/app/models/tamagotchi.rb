# frozen_string_literal: true

# Tamagotchi model
class Tamagotchi
  attr_accessor :health, :hunger, :happiness, :sleepiness, :event

  STATS = %i[hunger happiness sleepiness].freeze
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
    when 0 then :dead
    when 1..33 then :sad
    when 34..75 then :worried
    else :happy
    end
  end

  def dead?
    health.zero? || health.negative?
  end

  def play
    change_attr :happiness, (happiness + STEP)
    self.event = :play
  end

  def change_attr(attr, value)
    setter = (attr.to_s + '=').to_sym
    if value >= MAX
      send(setter, MAX)
      self.health -= STEP
    elsif value <= MIN
      send(setter, MIN)
      self.health -= STEP
    else
      send(setter, value)
    end
  end

  def feed
    change_attr :hunger, (hunger + STEP)
    self.event = :feed
  end

  def rest
    change_attr :sleepiness, (sleepiness + STEP)
    self.event = :rest
  end

  def decrease_random_attr
    attr = STATS.sample
    value = send(attr) - STEP
    change_attr attr, value
  end
end
