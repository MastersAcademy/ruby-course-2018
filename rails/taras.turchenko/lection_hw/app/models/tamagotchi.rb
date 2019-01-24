# frozen_string_literal: true

class Tamagotchi
  attr_accessor :health, :hunger, :happiness, :sleepiness, :event

  STATS = %i[hunger happiness sleepiness].freeze
  MIN = 0
  MAX = 100
  STEP = 10
  DEFAULTS = {
    'health' => MAX,
    'hunger' => MAX / 2,
    'happiness' => MAX / 2,
    'sleepiness' => MAX / 2,
    'event' => nil
  }.freeze

  def initialize(stats)

    self.health = stats['health']
    self.hunger = stats['hunger']
    self.happiness = stats['happiness']
    self.sleepiness = stats['sleepiness']
    self.event = stats['event']
  end

  def self.create
    tamagotchi = Tamagotchi.new(DEFAULTS)
    tamagotchi.save
    tamagotchi
  end

  def save
    stats = capture_attrs.except :mood, :dead
    Redis.current.set(:tamagotchi, stats.to_json)
  end

  def self.restore
    stats = JSON.parse(Redis.current.get(:tamagotchi)) || DEFAULTS
    Tamagotchi.new stats
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
    save
  end

  def change_attr(attr, value)
    setter = (attr.to_s + '=').to_sym
    if value >= MAX
      send(setter, MAX)
      self.health += STEP
    elsif value <= MIN
      send(setter, MIN)
      self.health -= STEP
    else
      send(setter, value)
    end
    save
  end

  def feed
    change_attr :hunger, (hunger + STEP)
    self.event = :feed
    save
  end

  def rest
    change_attr :sleepiness, (sleepiness + STEP)
    self.event = :rest
    save
  end

  def decrease_random_attr
    attr = STATS.sample
    value = send(attr) - STEP
    change_attr attr, value
  end
end
