class Pet < ActiveRecord::Base
  attr_reader :hunger, :happiness, :sleepiness, :event
  attr_accessor :event
  attr_writer :health

  MAX = 100
  MIN = 0
  STEP = 20

  def initialize
    self.health = MAX
    self.hunger = MAX / 2
    self.happiness = MAX / 2
    self.sleepiness = MAX / 2
    self.event = :idle
  end

  def rest
    self.sleepiness += STEP
    self.hunger -= STEP
    self.happiness += STEP
    self.event = :rest
  end

  def play
    self.happiness += STEP
    self.hunger -= STEP
    self.sleepiness -= STEP
    self.event = :play
  end

  def feed
    self.hunger += STEP
    self.sleepiness -= STEP
    self.happiness += STEP
    self.event = :feed
  end

  def dead?
    health.zero?
  end

  def mood
    case health
    when 0..33
      :sad
    when 34..66
      :worried
    else
      :happy
    end
  end

  def to_json
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

  def health
    @health.negative? ? 0 : @health
  end

  def hunger=(value)
    @hunger = process(value)
  end

  def happiness=(value)
    @happiness = process(value)
  end

  def sleepiness=(value)
    @sleepiness = process(value)
  end

  def process(value)
    self.health -= STEP if value > MIN
  end
end
