class Pet
  STEP = 10
  MAX = 100
  MIN = 0

  attr_accessor :health, :event
  attr_reader :hunger, :happiness, :sleepiness
  alias fun happiness

  def initialize
    self.hunger = MAX
    self.fun = MAX
    self.sleepiness = MAX
  end

  def health
    stats = [hunger, happiness, sleepiness]
    stats.sum / stats.count
  end

  def play
    self.event = :play
    self.fun += STEP
    self.hunger -= STEP
    self.sleepiness -= STEP
  end

  def rest
    self.event = :rest
    self.sleepiness -= STEP
    self.hunger -= STEP
    self.fun -= STEP
  end

  def feed
    self.event = :feed
    self.hunger -= STEP
    self.sleepiness -= STEP
    self.fun -= STEP
  end

  def mood
    case health
    when (2.0 / 3) * MAX..MAX
      :happy
    when MAX / 3.0..(2.0 / 3) * MAX
      :worried
    else
      :sad
    end
  end

  def dead?
    health.zero?
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

  def sleepiness=(value)
    @sleepiness = ranged_property(value)
  end

  def hunger=(value)
    @hunger = ranged_property(value)
  end

  def fun=(value)
    @happiness = ranged_property(value)
  end

  private

  def ranged_property(value)
    if value > MAX
      MAX
    elsif value < MIN
      MIN
    else
      value
    end
  end
end
